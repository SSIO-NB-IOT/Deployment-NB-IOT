# Déploiement

Ce document décrit les étapes nécessaires pour le déploiement en utilisant Docker, y compris la manière de cloner le dépôt et de construire des images Docker personnalisées pour Node-RED, InfluxDB et Grafana.

## Prérequis

- Docker doit être installé sur votre machine.

## Instructions

### 1. Installer Docker

Pour installer Docker sur votre machine, ouvrez un terminal et exécutez la commande suivante :

```bash
sudo apt install -y docker.io
```

### 2. Cloner le dépôt

Une fois Docker installé, clonez le dépôt `Deployment-NB-IOT` de l'organisation `SSIO-NB-IOT` avec la commande suivante :

```bash
git clone https://github.com/SSIO-NB-IOT/Deployment-NB-IOT.git
```

### 3. Construire les images Docker personnalisées

#### a. Node-RED

Pour construire l'image personnalisée de Node-RED, naviguez dans le dossier approprié et utilisez le `Dockerfile` fourni :

```bash
cd node-red-custom
# Utilisez la commande de construction Docker appropriée ici, par exemple:
docker build -t mon-image-node-red .
```

Remplacez `mon-image-node-red` par le nom que vous souhaitez donner à votre image Docker de Node-RED. Répétez des étapes similaires pour les images InfluxDB et Grafana en naviguant dans leurs dossiers respectifs et en utilisant leurs `Dockerfile` pour construire les images.
