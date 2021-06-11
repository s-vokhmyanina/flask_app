FROM python:3-alpine
WORKDIR /app
COPY . .
RUN pip install flask
ENV FLASK_APP "js_example"
CMD python -m flask run --host=0.0.0.0
# ENV RUNNER_ALLOW_RUNASROOT="1"
# ENV TZ=Europe/Moscow
# RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
#     && apt update \
#     && apt install -y -q gnupg2 apt-transport-https ca-certificates software-properties-common pwgen git make curl wget zip libicu-dev build-essential libssl-dev \
#     && apt install python-dev python-pip python-setuptools \
#     && curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
