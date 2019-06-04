# ZigZago App

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
