# Use the official Python image from the Docker Hub
FROM python:3.11-slim


ARG SECRET_KEY
ARG REGION

ENV SECRET_KEY=${SECRET_KEY}
ENV REGION=${REGION}

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt /app

RUN apt-get update && \
    apt-get install -y build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements.txt

# Copy the FastAPI app code into the container
COPY . /app

# Expose the port that the FastAPI app will run on
EXPOSE 8000

# Command to run the FastAPI app using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
