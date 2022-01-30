FROM python:3.7-slim
COPY ./model.py /deploy/
COPY ./pmodel.pkl /deploy/
COPY ./requirements.txt /deploy/
WORKDIR /deploy/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 80
ENTRYPOINT [ "python", "model.py" ]