#!/bin/bash
# Script Docker one-shot pour PostgreSQL

# Lancer Docker (en arrière-plan)
docker-compose up -d

# Attendre que PostgreSQL soit prêt
echo "Attente du démarrage de PostgreSQL..."
sleep 5  # tu peux augmenter si nécessaire

# Exécuter le fichier .psql dans le conteneur
docker exec -i cooking_log_db psql -U postgres -d cooking_log < ./cooking_log.psql

echo "Base de données initialisée avec succès !"