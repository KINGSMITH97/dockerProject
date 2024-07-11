FROM python

WORKDIR /usr/app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

ENV FLASK_APP=index.py

CMD ["python3", "-m", "flask", "--host=0.0.0.0"]