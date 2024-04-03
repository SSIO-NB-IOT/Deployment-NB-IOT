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
FROM nodered/node-red:latest

COPY flows.json /data/flows.json

ENV FLOWS=flows.json

RUN npm install node-red-contrib-influxdb node-red-dashboard
```
Pour construire l'image node-red:

```bash
docker build -t node-red-custom . 
```


## Vérification de l'Image Docker

Pour confirmer que l'image Docker `node-red-custom` existe sur votre machine, vous pouvez utiliser la commande suivante dans un terminal :

```bash
docker images
```

Cette commande liste toutes les images Docker installées, y compris `node-red-custom` si elle a été correctement construite et est présente.

## Contenu de l'Image Docker Customisée de Node-RED

L'image Docker personnalisée de Node-RED inclut les éléments suivants préconfigurés :

- **`flows.json`** : Le fichier de configuration principal utilisé par Node-RED.
- **Packages supplémentaires** : Deux packages Node-RED sont préinstallés :
  - `node-red-contrib-influxdb` : Un package pour l'intégration avec InfluxDB.
  - `node-red-dashboard` : Un package pour créer des tableaux de bord UI dans Node-RED.

## Test de l'Image Docker Customisée

En lançant un conteneur basé sur l'image `node-red-custom`, vous devriez obtenir un environnement Node-RED avec :
- Un flow existant prédéfini, comme décrit par le fichier `flows.json`.
- Les packages `node-red-contrib-influxdb` et `node-red-dashboard` déjà installés et prêts à l'emploi.

![Flow node-red](images/node-red.png)
