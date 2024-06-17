# Wähle das Basis-Image
FROM nginx:latest

# Entferne die Standard-Website von Nginx
RUN rm -rf /usr/share/nginx/html/*

# Kopiere die Projektdateien in das Verzeichnis für Nginx
COPY . /usr/share/nginx/html

# Exponiere den Port 80
EXPOSE 80
