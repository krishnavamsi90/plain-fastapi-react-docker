FROM python:3.9-slim

WORKDIR /app
ARG SECRET_VALUE
# Copy dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY ./app /app

# Set environment variables if needed
ENV SECRET_VALUE=${SECRET_VALUE}

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
