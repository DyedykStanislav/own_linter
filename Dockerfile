FROM python:3
RUN pip install flake8, isort
COPY . .
CMD [ "flake8", "--diff" ,"." ]
CMD [ "isort", "--diff", "." ]
