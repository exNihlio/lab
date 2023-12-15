#!/usr/bin/env python3

from fastapi import FastApi
import psycopg2

app = FastAPI()

@app.get("/visitors")
def check_visitors():
    conn = psycopg2.connect("dbname=api", "user=postgres")
    cur = conn.cursor()
