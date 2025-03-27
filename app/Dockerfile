# ใช้ Python เป็น Base Image
FROM python:3.9

# ตั้งค่าตัวแปร Environment
ENV PYTHONUNBUFFERED=1

# ตั้งค่าทำงานในโฟลเดอร์ /app
WORKDIR /app

# คัดลอกไฟล์ทั้งหมดไปยัง Container
COPY . /app

# ติดตั้ง dependencies
RUN pip install -r requirements.txt

# รันแอป Flask
CMD ["python", "app.py"]
