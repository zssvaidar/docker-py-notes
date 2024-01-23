FROM debian:bullseye-slim

WORKDIR /var/app/website_first

RUN apt-get update && \
    apt-get install -y \
    python3.9 \
    python3-pip \
    python3.9-venv

RUN mkdir -p ~/.venvs && \
    python3 -m venv ~/.venvs/venv

COPY requirements.txt .
RUN ~/.venvs/venv/bin/python3 -m pip install -r requirements.txt

COPY src/ .

CMD [ "/bin/bash", "-c", "source ~/.venvs/venv/bin/activate && python app.py"]