
FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y gcc g++ && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip3.11 install --no-cache-dir -r requirements.txt

COPY . .
EXPOSE 9999

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=9999", "--allow-root", "--no-browser", "--NotebookApp.token=''", "--NotebookApp.password=''"]