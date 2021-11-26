from flask import Flask, render_template, request

from flask_mysqldb import MySQL

app = Flask(__name__)

# app.config['MYSQL_HOST'] = "localhost"
# app.config['MYSQL_USER'] = "testuser"
# app.config['MYSQL_PASSWORD'] = "password"
# app.config['MYSQL_DB'] = "sdl"

# mysql = MySQL(app)

@app.route('/', methods=['GET', 'POST'])
def home():
    return render_template('home.html')

@app.route('/users.html', methods=['GET', 'POST'])
def users():
    if request.method == 'POST':
        vno = request.form['Vehicle Number']
        cur = mysql.connection.cursor()
        sql = "SELECT owner.Vehicle_Number, owner.First_Name, owner.Last_Name, owner.Phone_Number, owner.Gender, cars.Vehicle_Genre, cars.Vehicle_type, cars.additional_price, sum(price_structure.price_calculated) FROM owner, price_structure, cars WHERE owner.Vehicle_Number = %s AND owner.Vehicle_number=price_structure.Vehicle_Number AND owner.Vehicle_Number=cars.Vehicle_Number;"
        args = [vno, ]
        vnos = cur.execute(sql, args)
        if vnos > 0:
            ownerDetails = cur.fetchall()
        else:
            return render_template('error.html')

        return render_template('table_user.html', ownerDetails=ownerDetails)#, priceDetails=priceDetails, sumDetails=sumDetails)
    else:
        return render_template('users.html')


@app.route('/admin.html', methods=['GET', 'POST'])
def admin():
    if request.method == 'POST':
        cid = request.form['Camera ID']
        cur = mysql.connection.cursor()
        sql = "Select cameras.camera_id, cameras.highway_number, cameras.address, cameras.type, cameras.distance_from_source, read_vehicle.vehicle_number FROM cameras, read_vehicle where cameras.camera_id=read_vehicle.camera_id AND cameras.camera_ID=%s;"
        args = [cid, ]
        cids = cur.execute(sql, args)
        if cids > 0:
            cameraDetails = cur.fetchall()
        else:
            return render_template('error.html')
        return render_template('table_admin.html', cameraDetails=cameraDetails)
    else:
        return render_template('admin.html')

if __name__ == "__main__":
    app.run(debug=True,port=6969)
