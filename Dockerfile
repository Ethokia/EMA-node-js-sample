# Utilisation d'une image de base légère de Node.js
FROM node:alpine

# Définition du répertoire de travail dans le conteneur
WORKDIR /app

# Copie des fichiers package.json et package-lock.json (ou yarn.lock)
COPY package*.json ./

# Installation des dépendances
RUN npm install

# Copie du reste des fichiers de l'application
COPY . .

# Exposition du port sur lequel l'application va s'exécuter
EXPOSE 8080

# Commande pour démarrer l'application
CMD ["npm", "start"]