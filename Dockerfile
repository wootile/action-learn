FROM python:3.10-slim-buster

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

WORKDIR /opt

COPY requirements.txt requirements.txt
RUN pip install -i https://pypi.mirrors.ustc.edu.cn/simple/ --upgrade pip
RUN pip install -i https://pypi.mirrors.ustc.edu.cn/simple/ -r requirements.txt

COPY main.py main.py

EXPOSE 8080

CMD ["python3", "main.py"]