import cv2
import imutils
import numpy as np
import pytesseract
import os
from PIL import Image

# Set Tesseract-OCR path (Modify if needed)
pytesseract.pytesseract_cmd = "/usr/bin/tesseract"

# Load image (relative path)
img_path = "1.jpg"
img = cv2.imread(img_path, cv2.IMREAD_COLOR)

# Ensure image is loaded
if img is None:
    print(f"Error: Unable to load image at {img_path}")
    exit()

# Resize image
img = imutils.resize(img, width=500)

# Convert to grayscale
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

# Apply bilateral filter to reduce noise
gray = cv2.bilateralFilter(gray, 11, 17, 17)

# Perform edge detection
edged = cv2.Canny(gray, 30, 200)

# Find contours
cnts, _ = cv2.findContours(edged.copy(), cv2.RETR_LIST, cv2.CHAIN_APPROX_SIMPLE)

# Draw all contours for visualization
img1 = img.copy()
cv2.drawContours(img1, cnts, -1, (0, 255, 0), 2)
cv2.imshow("All Contours", img1)

# Sort contours by area and take the largest ones
cnts = sorted(cnts, key=cv2.contourArea, reverse=True)[:30]

# Draw top 30 contours
img2 = img.copy()
cv2.drawContours(img2, cnts, -1, (0, 255, 0), 2)
cv2.imshow("Top Contours", img2)

# Initialize variables
screenCnt = None
cropped_path = "cropped_plate.png"

# Loop through contours
for c in cnts:
    peri = cv2.arcLength(c, True)
    approx = cv2.approxPolyDP(c, 0.018 * peri, True)

    # Look for a contour with 4 corners (likely a plate)
    if len(approx) == 4:
        screenCnt = approx
        x, y, w, h = cv2.boundingRect(c)
        new_img = img[y:y + h, x:x + w]
        cv2.imwrite(cropped_path, new_img)  # Save cropped plate
        break

# If a plate is detected, draw the contour
if screenCnt is not None:
    cv2.drawContours(img, [screenCnt], -1, (0, 255, 0), 3)
    cv2.imshow("Detected Plate", img)
else:
    print("Number plate not detected!")
    cv2.waitKey(0)
    cv2.destroyAllWindows()
    exit()

# Load the cropped plate image
cropped_img = cv2.imread(cropped_path)

# Show the cropped image
cv2.imshow("Cropped Plate", cropped_img)

# Perform OCR on the cropped image
text = pytesseract.image_to_string(cropped_img, lang='eng').strip()
print("Detected Number Plate:", text)

# Wait for key press and close all windows
cv2.waitKey(0)
cv2.destroyAllWindows()
