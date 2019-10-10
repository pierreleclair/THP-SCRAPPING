# L'Art du Scrapping

Récupérer des données d'un site internet grâce à des algorithmes et des outils spécialisés comme [Nokogiri](https://github.com/sparklemotion/nokogiri). En gros un programme se chargera à notre place (Wouaaah!) de parcourir une page html d'un site pour y extraire et stocker des données spécifiques.

## Nokogiri

Nokogiri est une Gem de ruby qui permet de parser un document html.

Durant la 8e Journée de [THP CODE](https://www.thehackingproject.org/code) nous avons appris à utiliser cette gem pour pouvoir faire des projets scrapping cool ! *Route de la mairie*, *Trader de l'obscur*, *Route des incubateurs*.

### Route de la mairie

Ce projet conciste à scrapper les adresses email des mairies du Val d'Oise à partir de l'url de leur site pris dans [l'annuaire des mairies](http://annuaire-des-mairies.com/val-d-oise.html).
* [city_hall_route.rb](/city_hall_route.rb) - Contient le code ruby écrit à cet effet

### Trader de l'obscur

Ici nous avons écris un programme qui récupère le cours des cryptomonnaies.

* [trading_bot.rb](/trading_bot.rb) - Un code Ruby pour la tâche

### Route des incubateurs

Nous trouvons un [site](http://www.mon-incubateur.com/site_incubateur/incubateurs) qui recence les incubateurs en France et on y recupère ( *Nom de l'incubateur*, *Code postal*, *Site web* ) grace à notre super programme écrit en Ruby

* [incubator_route.rb](incubator_route.rb) - Le Fichier contient notre programme

### Auteur
* **Robert Bright** - *Moussaillon à THP* - Un petit Tweet ? [@robright2](https://twitter.com/robright2)
