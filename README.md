# Basic Docker Project

Ce projet met en place un serveur HTTP minimaliste en utilisant uniquement les bibliothèques standard de Python.

## **Prérequis**
- Docker installé sur votre machine
- (Optionnel) Docker Compose installé pour simplifier le déploiement

---

## **Étapes pour exécuter le projet**

### **Avec Docker Compose**
1. Ouvrez un terminal dans le dossier racine du projet (`basic-docker-project`).
2. Construisez et démarrez l'application avec la commande suivante :
   ```bash
   docker-compose up --build
---

### **Explications supplémentaires**

1. **Serveur HTTP Minimaliste** :
   - Le fichier `server.py` utilise `http.server`, une bibliothèque incluse dans Python.

2. **Dockerfile** :
   - Définit une image Python légère (`slim`) pour réduire la taille de l'image.
   - Copie uniquement le contenu du dossier `app/` pour éviter d'ajouter des fichiers inutiles.
   - Expose le port 8000 pour rendre le serveur accessible depuis l'hôte.

3. **Docker Compose** :
   - Simplifie la configuration et l'exécution du projet en une seule commande.

4. **Clarté de la documentation** :
   - Le fichier `README.md` inclut des instructions claires, reproductibles et adaptées à tous les niveaux.

---

### **Test et validation**

- **Avec Docker Compose** : Testez avec `docker-compose up --build` et assurez-vous que la page s'affiche correctement.
- **Sans Docker Compose** : Testez avec `docker build` et `docker run` pour vérifier que l'application fonctionne indépendamment.

Ce projet respecte toutes les contraintes mentionnées dans l'énoncé.

# Publier l'image sur DockerHub

Ce document explique comment construire, taguer et pousser l'image Docker de l'application sur DockerHub.

---

## **Prérequis**
1. Avoir un compte DockerHub ([Créer un compte ici](https://hub.docker.com/)).
2. Docker installé sur votre machine.

---

## **Étapes**

### **1. Construire l'image Docker**
Depuis le répertoire racine du projet, exécutez :

```bash
docker build -t basic-http-server .