from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/")
def read_root():
    secret_key = os.getenv("SECRET_KEY")
    region = os.getenv("REGION")
    return {"message": "Hello, World!", "secret_key": secret_key, "region": region}