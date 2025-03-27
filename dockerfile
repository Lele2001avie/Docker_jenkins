# Utiliser une image officielle de Node.js comme base
FROM node:18-alpine

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install --only=production

# Copier le reste des fichiers de l'application
COPY . .

# Exposer le port sur lequel l'application tourne
EXPOSE 3000

# Définir la commande de démarrage de l'application
CMD ["node", "server.js"]
