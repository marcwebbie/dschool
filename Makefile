test:
	py.test --ds=dschool.settings.local

coverage:
	py.test --cov=.

start:
	python manage.py runserver

migrate:
	python manage.py migrate

makemigrations:
	python manage.py makemigrations

drop-db:
	rm -rf db.sqlite3
	rm -rf dschool/db.sqlite3

db: drop-db makemigrations migrate

clean:
	find . -name \*.pyc -delete
	find . -name \*__pycache__ -delete
