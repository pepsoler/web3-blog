#!/bin/bash

#anar al directori del projecte
cd ./blockchain_projects/fullstackweb3/web3-blog

#comenta la xarxa mumbai en el hardhat.config.js

#start hardhat network
npx hardhat node

#aquí ja s'ha creat la xarxa local de blockchain amb 20 nodes
#podem connectar-nos a un dels nodes per interactuar amb la xarxa
#per això, utilitzam Metamask. Ara ja hauries de poder utilitzar metamask

#deploy the contract in the hardhat network
npx hardhat run scripts/deploy.js --network localhost

#Start metamask and check 
# the imported account from hardhat network should be in metamask running and available

#Run the app to create and manage posts
npm run dev

#Accedeix per web a la app
http://localhost:3000/

#Cream una variable d'entorn amb la clau privada de la nostra wallet
#en el fitxer .env que es troba a l'arrel, hi ha aquesta variable

#obrim la xarxa de test de polygon que es la Mumbai Testnet des del metamask
#primer demana MATICs al faucet
https://faucet.polygon.technology/

#descomenta la xarxa mumbai del hardhat.config.js

#deploy del contracte My Blog a mumbai
npx hardhat run scripts/deploy.js --network mumbai

## Ho pots fer ja tot a Polygon directament:
# Arranca la xarxa de Hardhad
npx hardhat node

#desplega el contracte a polygon
npx hardhat run scripts/deploy.js --network mumbai

# Obre metamask

#Arranca la aplicació
npm run dev