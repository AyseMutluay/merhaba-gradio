FROM python:3.11-slim

# Environment settings for predictable Python behavior
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

WORKDIR /app

# Install dependencies first (better layer caching)
COPY requirements.txt ./
RUN python -m pip install --upgrade pip \
    && pip install -r requirements.txt

# Copy application code
COPY app.py ./

# Gradio default port
EXPOSE 7860

# Run the app
CMD ["python", "app.py"]





