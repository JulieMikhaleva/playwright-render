FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    wget curl gnupg libnss3 libatk-bridge2.0-0 libxcomposite1 \
    libxdamage1 libxrandr2 libgbm1 libasound2 libpangocairo-1.0-0 \
    libx11-xcb1 libxss1 libgtk-3-0 && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir playwright openai && \
    playwright install --with-deps

COPY . /app
WORKDIR /app

CMD ["python", "main.py"]
