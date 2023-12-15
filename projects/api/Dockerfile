FROM python:3.10

COPY main.py /app/

RUN pip install "fastapi[all]"

CMD ["uvicorn", "main:app", "--reload"]
