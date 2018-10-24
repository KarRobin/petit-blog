# Blog BDD en Ruby On Rails
Ce projet codé par Robin Caron

## How to use
Ruby version utilisé 2.5.1 
Rails version utilisé 5.2.1 
Pour commencer, il faut clone le repository :

`git clone https://github.com/JostQ/blog_rails`
Tu dois te rediriger dans le dossier du projet :

cd blog_rails
Ensuite, tu dois installer les gems, donc écris dans ton termial :

`bundle install`
Schéma de la base de données
```
     ____________        ____________        ____________        ____________        ____________ 
    |   users    |      |   likes    |      |  articles  |      |  comments  |      | categories | 
    |¯¯¯¯¯¯¯¯¯¯¯¯|      |¯¯¯¯¯¯¯¯¯¯¯¯|      |¯¯¯¯¯¯¯¯¯¯¯¯|      |¯¯¯¯¯¯¯¯¯¯¯¯|      |¯¯¯¯¯¯¯¯¯¯¯¯|
    | id         |      | id         |      | id         |      | id         |      | id         |
    | first_name |1    n| user_id    |n    1| title      |1    n| content    |      | name       |
    | last_name  |¯¯¯¯¯¯| articles_id|¯¯¯¯¯¯| content    |¯¯¯¯¯¯| articles_id|      |            |
    | email      |      |            |     n| user_id    |      | user_id    |      |            |
    |____________|      |____________|   |¯¯| category_id|      |____________|      |____________|
      1|  1|_____________________________|  |____________|             |n                  |1
       |_____________________________________________|_________________|                   |
                                                    n|_____________________________________|

```
Initialisation de la base de données
Pour mettre en place les tables dans la base de données :

`rails db:migrate`
Et pour envoyer des données dans ces tables :

`rails db:seed`
## Pour conclure
Tu peux faire tes tests dans la base de données depuis la console de Rails avec :

`rails console`
