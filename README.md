# fakeBlinux
## Installation de Docker
Doc officielle pour l'installation de Docker : https://docs.docker.com/engine/installation .

## Installation de fakeBlinux
```
git clone https://github.com/rotarui/fakeBlinux
cd fakeBlinux
./install
```

## Utilisation
`blinux_build` va reconstruire fakeBlinux a partir du Dockerfile situe dans le dossier courrant.


`blinux_full_rebuild` va reconstruire fakeBlinux de A a Z a partir du Dockerfile situe dans le dossier courrant.

`blinux` va lancer fish dans fakeBlinux. Le dossier courrant sera mount et toute modification faites dans fakeBlinux aura aussi lieu sur votre OS. Marche dans l'autre sens.

`Gcc` prends en parametre un ligne d'execution complete. La commande va compiler tous les `.c` du dossier courrant et va creer un binaire `a.out`. Examples d'utilisation : `Gcc valgrind ./a.out arg1 arg2` va lancer fakeBlinux, executer `gcc *.c -Wall -Wextra -Werror` dans le dossier courrant, puis va executer `valgrind ./a.out arg1 arg2`. La command quitte finalement fakeBlinux.

`Make` fonctionne comme `Gcc`, mais va lancer un `make re` dans le dossier courrant. Il prend aussi en parametre la ligne d'execution.

## Issues
Elements manquants a signaler dans les issues !
