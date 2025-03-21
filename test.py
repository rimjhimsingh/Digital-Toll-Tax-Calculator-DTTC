from flask import Flask,render_template, request
from flask_wtf import FlaskForm
from wtforms import StringField,SelectField,PasswordField, BooleanField, SubmitField,IntegerField
from wtforms.validators import DataRequired
from flask_mysqldb import MySQL
import os
import sys
import mysql.connector

# Flask constructor takes the name of
# current module (__name__) as argument.
class Config(object):
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'you-will-never-guess'

class InsertVehicle(FlaskForm):
    vehicle_number = StringField('vehicle number:', validators=[DataRequired()])
    vehicle_type=SelectField('Vehicle Type', validators=[DataRequired()])
    vehicle_category=SelectField('Vehicle Category', validators=[DataRequired()])
    first_name = StringField('first name:', validators=[DataRequired()])
    last_name=  StringField('last name:', validators=[DataRequired()])
    phone_number=StringField('phone number:', validators=[DataRequired()])
    gender=StringField('gender :',validators=[DataRequired()])
    submit = SubmitField('Enter')
class ReadVehicle(FlaskForm):
    vehicle_number = StringField('vehicle number:', validators=[DataRequired()])
    camera_id = StringField('camera id:', validators=[DataRequired()])
    submit = SubmitField('Enter')
app = Flask(__name__)
app.config.from_object(Config)
app.config['MYSQL_HOST'] = "localhost"
app.config['MYSQL_USER'] = "testuser"
app.config['MYSQL_PASSWORD'] = "password"
app.config['MYSQL_DB'] = "sdl"

ms = MySQL(app)
mydb = mysql.connector.connect(
  host="localhost",
  user="testuser",
  password="password",
  database="sdl"
)
mycursor = mydb.cursor()
# The route() function of the Flask class is a decorator,
# which tells the application which URL should call
# the associated function.
@app.route('/', methods=['GET', 'POST'])
# ‘/’ URL is bound with hello_world() function.
def hello_world():
    return render_template('home.html') 
@app.route('/users.html', methods=['GET', 'POST'])
def users():
    if request.method == 'POST':
        vno = request.form['Vehicle Number']
        cur = ms.connection.cursor()
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
        cur = ms.connection.cursor()
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
# main driver function
@app.route('/insert.html',methods=['GET','POST'])
def insert():
    form=InsertVehicle()
    form.vehicle_type.choices=['SUV','Sedan','Hatchback','HLV']
    form.vehicle_category.choices=['Private','Commercial']
    cur = ms.connection.cursor()
    rv=""
    sql=""
    error_mess=""
    price=""
    if form.validate_on_submit():
        ck_sql="Select * from owner where Vehicle_Number=%s"   
        ck_args=[form.vehicle_number.data]
        cids=cur.execute(ck_sql,ck_args)
        if cids>0:
            error_mess="Record Already Present"
        else:
            car_sql="insert into cars values (%s,%s,%s,%s)"
            if (form.vehicle_type.data=='Hatchback' and form.vehicle_category.data=='Private'):
                price="0"
            elif (form.vehicle_type.data=='Hatchback' and form.vehicle_category.data=='Commercial'):
                price="5"
            elif (form.vehicle_type.data=='Sedan' and form.vehicle_category.data=='Commercial'):
                price="10"
            elif (form.vehicle_type.data=='Sedan' and form.vehicle_category.data=='Private'):
                price="5"
            elif (form.vehicle_type.data=='SUV' and form.vehicle_category.data=='Commercial'):
                price="15"
            elif (form.vehicle_type.data=='SUV' and form.vehicle_category.data=='Private'):
                price="10"
            elif (form.vehicle_type.data=='HLV' and form.vehicle_category.data=='Commercial'):
                price="20"
            elif (form.vehicle_type.data=='HLV' and form.vehicle_category.data=='Private'):
                price="15"
            car_args=[form.vehicle_number.data,form.vehicle_category.data,form.vehicle_type.data,price]
            rv=mycursor.execute(car_sql,car_args)
            mydb.commit()
            sql="INSERT INTO owner VALUES (%s,%s,%s,%s,%s,%s);"
            args=(form.vehicle_number.data,form.first_name.data,form.last_name.data,form.phone_number.data,form.gender.data,"0")
            rv=mycursor.execute(sql,args)
            mydb.commit()
            error_mess="successful insertion"
        # rv=cur.fetchall()
    return render_template('insert.html', title='Insert', form=form,message=error_mess)
@app.route('/demo.html',methods=['GET','POST'])
def ins_readvehicle():
    form=ReadVehicle()
    error_mess=""
    if form.validate_on_submit():
        sql="insert into read_vehicle (camera_id,Vehicle_Number) values (%s,%s)"
        args=(form.camera_id.data,form.vehicle_number.data)
        rv=mycursor.execute(sql,args)
        mydb.commit()
        error_mess="successful!"
    return render_template('demo.html',form=form,message=error_mess)
if __name__ == '__main__':
 
    # run() method of Flask class runs the application
    # on the local development server.
    app.run(host='0.0.0.0', port=5000)

