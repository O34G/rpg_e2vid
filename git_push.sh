#!\bin\bash
git add .
echo Inserire la descrizione breve del push: 
read etichetta
git commit -m "$etichetta"
git push -u origin cedric/firenet-mod
