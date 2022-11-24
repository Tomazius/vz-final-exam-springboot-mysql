# filmai-final-project
VZ Final project SQL Filmai DB

Final project for "Vilties žiedas" Java study course

%%% Task and Purpose %%%
To create a mock local website acting as a movie informational database;
Store the data in a local MySQL database;
Design the back-end for the whole system;
Simple but functional front-end;
Spring security for user authentication and roles;
Built to be used for both admin and external user.

Paleidimo instrukcija:

Parsisiųsti ir įsirašyti Wampserver64 /// example link - https://sourceforge.net/projects/wampserver/

1. Paleisti Wampserver;
2. Naršyklėje eiti į http://localhost/phpmyadmin/. Prisijungti su username 'root' ir jokio slaptažodžio;
3. Duomenų bazės aplanką rasite resources aplanke, visą informaciją importuoti prisijungus prie http://localhost/phpmyadmin/. Tai sukurs visą mano naudotą duomenų bazę;
4. Jei neturite Intellij, 'command prompte' galite rašyti 'mvn spring-boot:run' (pirma nurodžius linką į aplanką, kuriame yra parsiųsta programa), pasileidus programai naršyklėje rašykite 'http://localhost:8080/';
5. Prisijungti su 'admin' privilegijomis galite rašydami username - 'test', password - 'test', prisijungti su 'user' privilegijomis, username - 'Lankytojas', password - 'Lankytojas123'. Taip pat prisijungus su 'admin' privilegija galite registruoti naują vartotoją, kuriam automatiškai suteiks 'user' rolę, tiesiog eikite į "http://localhost:808/registracija";
6. Homepage galite naviguoti - ieškoti filmų pagal pavadinimą, matyti visus filmus duomenų bazėje, ieškoti filmų pagal žanrą (kategoriją);
7. 'Admin' privilegija leidžia pridėti filmą (įvedant jau DB esamo režisieriaus vardą ir pavardę jį automatiškai priskiria tam režisieriui) (visų filmų puslapyje yra mygtukas nuvedantis į filmo pridėjimą), redaguoti ir ištrinti pasirinktą filmą (filmo informacijos puslapyje), taip pat pridėti žanrą (kategoriją);
8. 'User' privilegija leidžia stebėti filmo informaciją, ieškoti filmo pagal pavadinimą, pagal žanrą, taip pat komentuoti pasirinktą filmą;

Kadangi nepavyko paleisti 'custom' prisijungimo puslapio, naudojamas spring-security default prisijungimo puslapis.
Taip pat suprantama, jog estetinė šio projekto pusė (front-end) yra nepatraukli akiai, tačiau ji funkcionali.

Turėdamas progą norėčiau padėkoti dėstytojui Dovydui Valiokui, už nuolatinę pagalbą ir kantrybę beveik bet kuriuo paros metu.

%%% FIN %%%
