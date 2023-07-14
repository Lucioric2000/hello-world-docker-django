FROM python:3.11
LABEL authors="lucio"
# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
#ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY . /app
RUN python -mensurepip
RUN pip install -r /app/requirements.txt
EXPOSE 8000
RUN which python
#build docker build -t lucioric/hello-world-docker-django-lucio .
#ENTRYPOINT ["/bin/bash", "-c"]
ENTRYPOINT ["python"]
CMD ["/app/hello_world/manage.py", "runserver", "0.0.0.0:8000"]