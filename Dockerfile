FROM python:3.6.1-alpine
ADD . /usr/src/app
# RUN mkdir /usr/src/app
WORKDIR /usr/src/app
# COPY ./requirements.txt .
RUN pip3 install -r requirements.txt
# ENV PYTHONUNBUFFERED 1
# COPY . .
CMD [ "python3", "-u", "bridge.py" ]