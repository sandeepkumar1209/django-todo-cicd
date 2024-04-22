FROM python:3
RUN pip install django==3.2
COPY . .
RUN python manage.py migrate
RUN python manage.py createsuperuser
EXPOSE 8000
CMD [ "python","manage.py","runserver"]
