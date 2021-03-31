# ##### ###### DOCKERFILE ############## 

# Nous allons voir les options les plus utilisé dans un dockerfile 

### FROM 

# Pour definir l'image de base sur laquelle va se baser la nouvelle image 
# qu'on souhaite creer 

### ENV 

# ENV est utilisé pour definir des variable d'environnement, qui vont 
# persister quand un conteneur est démarré. on peut les voir en 
# utilisant un docker inspect et on peut les modifier en demmarrant 
# notre conteneur en utilisant l'option --env key=value> de la command
# docker run 

### ADD 

# ADD est utiliser pour copier des fichiers depuis l'exterieur vers
# le conteneur

# sa synthax est comme on le voit 
# ADD <source> <destination>

# on peut utiliser des expression reguliere pour copier 
# par exemple 
# ADD *.conf /conf va copier tous les fichiers .conf du repertoire
# courant du dockerfile vers le repertoir /conf de l'image  

# de la méme maniére 
# ADD fichier.con? /conf  # ou ? represente ici tout carractere 

# ADD test.txt relativeDir/
# ADD test.txt /absoluteDir/

### COPY 

# La command COPY fait la méme chose que la command ADD avec les mémes 
# synthaxe la seul chose qui change est le mot cle ADD ou COPY.

# La difference entre ADD et COPY est que ADD nous permet de copier depuis
# une URL comme element source vers notre image 

### WORKDIR 

# WORKDIR /path/to/workdir

# Elle permet de placer le curseur vers un repertoir donné dans notre image 
# Tous les commandes qui suivent le WORKDIR prennent en reference ce 
# repertoir deja defini

# si le WORKDIR n'existait pas il sera automatiquement créé.

# si on cree un workdir avc un chemin relatif, il sera créer relativeement 
# en fonction d'un workdir precedemment créé s'il yen a

### ARG 

# ARG <name>[=<default value>]

# ARG permet de definir des variable qu'on peut renseigner au moment 
# du build-time lorsquon build l'image avc la cmd docker build en 
# utilisant l'option --build-arg <var_name>=<value> 

### CMD

# 3 Synthaxes pour utiliser CMD:

#    CMD ["executable","param1","param2"] (exec form, la forme recommandé)
#    CMD ["param1","param2"] (definir les parametres par defaut du ENTRYPOINT)
#    CMD command param1 param2 (shell form)

# il ne peut avoir qu'un seul CMD dans un dockerfile, s'il y'en a 
# plusieurs c'est le dernier qui sera utilisé 

# CMD permet de definir les cmd par defaut a executer au lancement 
# du conteneur.

# Si le les cmd executable a lancer au demarrage du conteneur ne sont pas present on devra definir une instruction ENTRYPOINT 

### ENTRYPOINT 

# Deux synthaxe 

# la forme recommandé 

# ENTRYPOINT ["executable", "param1", "param2"] 

# la forem shell 

# ENTRYPOINT command param1 param2

# ENTRYPOINT Nous permet de creer un conteneur qui sera utiliser comme un executable 

# les deux mot clé CMD et ENTRYPOINT permette de definir les commande qui seront executé au demarrage du conteneur 

# un dockerfile doit contenir au moin un des deux CMD ou ENTRYPOINT 

# ENTRYPOINT sert a creer un conteneur qui sera utiliser comme un executable 

# CMD peut etre utilisé pour definir les params par defaut de ENTRYPOINT ou pour executer aussi une cmd sur le conteneur 


### EXPOSE 

# Pour dire sur quel ports le conteneur va écouter au demarrage 

### RUN 

# permet d'executer des commandes au moment du build de l'iamge 

# on deux synthaxe 

# RUN <CMD> mode shell 

# RUN ["executable", "param1", "param2"] (exec form)

# RUN ["/bin/bash", "-c", "echo hello"]

FROM nginx

# WORKDIR /usr/share/nginx/html/
# ADD index.html

# ENV TEST_ENV=/usr/share/nginx/html/index.html
# WORKDIR ${TEST_ENV}

ENV MY_DIR=my_new_dir

ADD index.html /usr/share/nginx/html/

RUN mkdir ${MY_DIR}



