install:
	#install commands
	pip install --upgrade pip && \
		pip install -r requirements.txt


format:
	#format the code
	black *.py mylib/*.py

lint:
	#flake8 or #pylint
	pylint --disable=R,C app.py

test: 
	#test
	python -m pytest -vv  test_app.py



all: install post-install lint test deploy