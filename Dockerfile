From python:3.6

WORKDIR /app

COPY requirements.txt ./requirements.txt


RUN pip3 install -r requirements.txt

EXPOSE 8501

COPY . /app


ENTRYPOINT ["streamlit","run"]

CMD ["app.py"]


