FROM python:3
COPY ./entrypoint.sh .
CMD [ "./entrypoint.sh" ]
