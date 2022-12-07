FROM python
sudo RUN pip install django
COPY . .
sudo RUN python3 manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
