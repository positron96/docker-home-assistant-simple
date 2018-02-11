FROM python:3.6-alpine3.6

ENV PYTHONUNBUFFERED=1

RUN pip3 install homeassistant

EXPOSE 8123

RUN mkdir /config && chmod g+rw /config && \
  ln -s /media/config/configuration.yaml /config/configuration.yaml \
  ln -s /media/storage/home-assistant_v2.db /config/home-assistant_v2.db \
  ln -s /media/storage/deps /config/deps
  
COPY ttt.py /ttt.py
#CMD ["--config", "/config"]
#ENTRYPOINT ["hass"]

ENTRYPOINT ["python3", "ttt.py"]
