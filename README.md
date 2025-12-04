# 📦 Unknownerous HUD

HUD custom moderne pour FiveM (ESX/OX)

## 👨‍💻 Version 

1.0.0

## Vidéo avec Image 

https://youtu.be/vx0Txa1bG2I

https://github.com/Unknownerous/Unknownerous_Hud/blob/35eab3abbac65cac20b90e9f894ca851bf1e6a08/HUD_1.jpg

## 🎨 Caractéristiques

- Design moderne rouge, cyan, jaune, orange et bleu
- 6 icones différente couleur
- jauge remplie selon la santé, la faim... du personnage
- Menu clic droit
- Prénom & Nom RP 
- Âge RP 

## 📋 Prérequis

- FiveM Server
- oxmysql
- ESX ou standalone 

## 🚀 Installation

### 1. Copier la resource
Copie le dossier `Unknownerous_Hud` dans ton dossier `resources/`


### 3. Ajouter au server.cfg

ensure oxmysql
ensure Unknownerous_Hud ou ensure Standalone (resource/[standalone]/Unknownerous_Hud)
```

### 4. Redémarrer le serveur
Redémarre ton TxAdmin en rafraichissant avec la commande (restart Unknownerous_Hud)


## 📁 Structure des fichiers

```
Unknownerous_Inventory📁/
├── client📁/
│   └── client.lua          
├── server📁/
│   └── server.lua              
├── html📁/
│   ├── index.html                                  
│   └── assets📁/
│       └── css/
│             └──style.css
│       └── js 📁/ 
│            └──jquery.min.js 
│            └── script.js
├── Config.lua              
├── fxmanifest.lua 
```

## 🎨 Personnaliser les couleurs

Ouvre `html/style.css` et modifie les variables en haut :

```css
:root {
    --fill: #ff0000ff;        
    --fill: #0400f3ff;  
    --fill: #f7a901ff;   
    /* ... */
}
```

## 🐛 Problèmes courants

**Le nom & prénom RP ne fonctionne pas :**
- Vérifie que la resource est bien `ensure` dans server.cfg
- Vérifie que Js.app fonctionne et pas d'erreur de code



## 👨‍💻 Auteur

**Unknownerous ❤️** 

