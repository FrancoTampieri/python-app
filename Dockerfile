# Utilizza un'immagine base di Python 3.12
FROM python:3.12-slim

# Imposta la directory di lavoro all'interno del container
WORKDIR /app

# Copia il file requirements.txt nella directory di lavoro
COPY requirements.txt .

# Installa le dipendenze
RUN pip install -r requirements.txt

# Copia il resto del codice dell'applicazione nella directory di lavoro
COPY . .

# Espone la porta su cui l'applicazione sarà in esecuzione
EXPOSE 8000

# Definisce il comando di avvio dell'applicazione
CMD ["python", "app.py"]
