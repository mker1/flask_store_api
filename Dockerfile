from python:3.9
expose 5000
WORKDIR /app
copy requirements.txt .
run pip install -r requirements.txt
copy . .
cmd ["flask", "run", "--host", "0.0.0.0"]