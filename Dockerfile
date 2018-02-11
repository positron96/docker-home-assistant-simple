FROM python:3.6-alpine3.6

ENV PYTHONUNBUFFERED=1

RUN pip3 install homeassistant

EXPOSE 8123

RUN mkdir /config && chmod g+rw /config && ln -s /media/configuration.yaml /config/configuration.yaml
COPY ttt.py /ttt.py
#CMD ["--config", "/config"]
#ENTRYPOINT ["hass"]

ENTRYPOINT ["python3", "ttt.py"]
