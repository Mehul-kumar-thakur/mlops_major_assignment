FROM python:3.10-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source and model
COPY src/ ./src
COPY src/model.joblib .

# Default command to run prediction
CMD ["python", "src/predict.py"]
