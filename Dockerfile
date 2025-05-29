FROM python:3.11

ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requirements.txt /code/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /code/

CMD ["gunicorn", "backend_project.wsgi:application", "--bind", "0.0.0.0:8000"]