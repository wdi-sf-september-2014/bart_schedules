## The app:

We're working with Ruby on Rails, so I figured... choo-choo, BART schedule listing app. 

### Functionality

* There are ***Stations***
* A ***Station*** has:
  * a ***name***
  * a ***previous Station***
  * a ***next Station***
  * has many ***Departures***
* A ***Departure***
  * has a ***train line*** (for example: Richmond, Millbrae, etc)
  * has a ***time***

* The home page should list the next 4 departures, for each station
* Departures should be grouped by station
* Full crud for each model
