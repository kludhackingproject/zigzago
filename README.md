# ZigZago App

Application de comparaison de vol developpée par : 
- Vincent Gillibert,
- Thibault Telliez,
- Lucas Piquet,
- Drieli Luz,
- Antoine Jacques

Dans le cadre du projet final THP 2019.

Lien en production : https://zigzago-app.herokuapp.com/

## Protocole 

```[workflow démarrage]
git status
git checkout -b 06951_my_incredible_feature
git push my_incredible_feature

[workflow travail fini ]
git status
git add ###
git commit -m "[#06951] Adds validation to m..."
git status
git push

git checkout development
git pull --prune
git checkout -
git merge development
git push my_incredible_feature

git checkout development
git merge my_incredible_feature```
