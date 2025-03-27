from flask import Flask, jsonify
import mysql.connector
import time

app = Flask(__name__)

# รอให้ MySQL พร้อมก่อนเชื่อมต่อ
time.sleep(10)

# การเชื่อมต่อ MySQL
db = mysql.connector.connect(
    host="db_server",
    user="root",
    password="rootpassword",
    database="unidb"
)

@app.route('/')
def hello():
    return "Hello from Flask Backend!"

@app.route('/api/users')
def get_users():
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT * FROM student")
    users = cursor.fetchall()
    return jsonify(users)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
