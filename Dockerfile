FROM python:3.11
LABEL authors="lucio"
# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY . /app
RUN python -mensurepip
RUN pip install -r /app/requirements.txt
#CMD ["node", "src/index.js"] 64ac17b1957ff3264e32b8a6
EXPOSE 8000
#PORT 8000
#RUN python /app/week9/pather.py
ENTRYPOINT ["python"]
CMD ["/app/hello_world/manage.py", "runserver", "0.0.0.0:8000"]