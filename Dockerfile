FROM python:3
<<<<<<< HEAD
RUN pip install django==3.2
COPY . .
RUN python manage.py migrate
RUN python manage.py createsuperuser
EXPOSE 8000
CMD [ "python","manage.py","runserver","0.0.0.0:8000"]
=======
RUN pip3 install django==3.2

COPY . .
RUN python3 manage.py migrate

CMD ["python3","manage.py","runserver","0.0.0.0:8000"]

>>>>>>> 9ac0d75 (added docker compose file)
