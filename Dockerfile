# Utilisation de l'image officielle Nginx
FROM nginx:alpine

# Copier les fichiers du site web vers le dossier Nginx
COPY ./www /usr/share/nginx/html

# Exposer le port 80 pour accéder au serveur
EXPOSE 80

# Lancer Nginx
CMD ["nginx", "-g", "daemon off;"]
