# Utiliser l'image officielle Python comme base
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers du projet dans le conteneur
COPY app/ .

# Exposer le port 8000 pour le serveur HTTP
EXPOSE 8000

# Commande pour exécuter le serveur
CMD ["python", "server.py"]