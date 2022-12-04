FROM python
RUN pip install django
COPY . .
RUN python3 manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
