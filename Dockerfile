FROM python:3.9-slim-buster
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/obrigg/Vanilla-ISE.git
WORKDIR /Vanilla-ISE/
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT ["python", "app.py"]
