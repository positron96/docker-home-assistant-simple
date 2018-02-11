FROM python:3.6-alpine3.6

RUN pip3 install homeassistant

EXPOSE 8123

RUN mkdir /config
COPY ttt.py /ttt.py
#CMD ["--config", "/config"]
#ENTRYPOINT ["hass"]

ENTRYPOINT ["python3", "ttt.py"]
