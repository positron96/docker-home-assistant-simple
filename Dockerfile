FROM python:3.6-alpine3.6

EXPOSE 8123

COPY ttt.py /ttt.py

CMD ["/ttt.py"]
ENTRYPOINT ["python3"]
