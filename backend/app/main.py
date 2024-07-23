from fastapi import FastAPI, HTTPException, Depends
from fastapi.middleware.cors import CORSMiddleware


app = FastAPI()


origins = ["*"]
app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
@app.get("/")
async def read_root():
    secret_value = os.getenv("SECRET_VALUE")
    return {"Hello": "World", "SecretValue": secret_value}

