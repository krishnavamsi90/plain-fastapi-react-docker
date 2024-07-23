FROM python:3.9

WORKDIR /app
ARG SECRET_VALUE
# Copy dependencies and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY ./app /app

# Set environment variables
ENV SECRET_VALUE=${SECRET_VALUE}

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
