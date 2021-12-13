Oleh Bilykh, 17.05.21, KEaMT

1 Nákupná klientská aplikácia MVC na spotrebovanie zdroja Api, ktorým je webový projekt ShoppingClient Asp.Net MVC. Projekt API ma údaje o výrobkoch a vykonáva operácie CRUD s vystavením metód api na konzumáciu z projektu Shopping Client.Projekt API robi záznamy o produktoch uložené v databáze mongodb no-sql.Cize mam 3 mikroservisy, a to su : Shopping.Client, Shopping.API, MongoDb mikroservisy.

2 ./aks - manifest subory pre nasadenie aplikacie do klastra na verjnom klaude
  ./ks8 - manifest subory pre lokalny klaster
  ./Shopping - aplikacia a suvislosti

3 Pozriet sa na aplikaciu sa da cez webovy prehliadac: http://20.86.192.63/

4 Pouzity verejny klaud - Azure, v nom vytvorene: resourse group, container     registry, vytvoreny klaster s pripojenim do registra kontainerov. Pouzite dockerfily pre kazdu sluzbu. Pouzita databasa - mongodb.

5 Na spustenie aplikacie pomocou skriptov je potrebne mat nainstalovane azure profil, docker, kubectl, azure-cli.


Zdroje : 
 - https://www.udemy.com/course/deploying-net-microservices-with-k8s-aks-and-azure-devops
 - https://medium.com/aspnetrun/deploying-net-microservices-to-azure-kubernetes-services-aks-and-automating-with-azure-devops-c50bdd51b702