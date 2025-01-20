FROM python:3.10.2-slim

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

# Download NLTK stopwords
RUN python -m nltk.downloader stopwords

COPY . /app/

EXPOSE 8080

CMD ["python", "app.py"]





