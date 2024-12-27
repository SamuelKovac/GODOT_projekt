# GODOT_projekt
Sem hádzať všetko súvisiace s projektom.

Tu je cca ako bude vyzerať štruktúra projektu a všetky body.

Názov hry: "Skokan"
Jednoduchá hra, kde hráč ovláda postavičku, ktorá skáče medzi plošinami, zbiera mince a vyhýba sa prekážkam, aby dosiahla cieľ.

Herné požiadavky:

Minimálne 5 scén

Úvodné menu: Obsahuje tlačidlá Play, Instructions a Quit.
4 levely:
Les: Plošiny medzi stromami, hráč zbiera mince a vyhýba sa bodliakom.
Jaskyňa: Tmavé prostredie, kde hráč preskakuje cez praskliny a vyhýba sa netopierom.
Láva: Plošiny nad lávou, hráč zbiera diamanty a vyhýba sa ohnivým guľám.
Hory: Veterné prostredie, kde sa plošiny pohybujú, a hráč musí dosiahnuť vrchol.

Funkcionality:
Zbieranie predmetov: Hráč zbiera mince alebo diamanty v každej úrovni, pričom sa na obrazovke zobrazuje počet nazbieraných predmetov.
Prekážky: Hráč sa musí vyhnúť nebezpečným objektom (napr. bodliaky, netopiere, ohnivé gule).

Kolízne oblasti:
Kolízia s mincami/diamantmi (zbieranie predmetov).
Kolízia s plošinami (hráč môže na nich stáť).
Kolízia s nepriateľmi (strata života).
Kolízia so spodnou časťou obrazovky (reštart úrovne).
Kolízia s cieľom (prechod na ďalší level).

Volanie signálov:
Zmena scény po dosiahnutí cieľa.
Zobrazenie výstrahy pri nízkom počte životov.
Spustenie zvuku pri zbieraní mince.
Zníženie počtu životov po kolízii s nepriateľom.
Spustenie animácie pohyblivej plošiny.

Riadenie grafiky klávesnicou:
Hráč sa pohybuje doľava a doprava šípkami a skáče medzerníkom.
Klávesmi sa ovláda aj pohyb v menu.

Paralax pozadie:
Každá úroveň má 3 vrstvy:
Les: Stromy (predná vrstva), hory (stredná vrstva), obloha (zadná vrstva).
Jaskyňa: Skalné útvary (predná vrstva), tiene (stredná vrstva), tmavé pozadie (zadná vrstva).
Láva: Pohybujúca sa láva (predná vrstva), skaly (stredná vrstva), sopka (zadná vrstva).
Hory: Snehové kopce (predná vrstva), hory (stredná vrstva), obloha s mrakmi (zadná vrstva).

Ako začať:
Scény:
Vytvor úvodné menu a 4 jednoduché scény pre levely s plošinami, mincami a prekážkami.

Mechaniky:
Implementuj pohyb postavy a mechaniku skákania.
Pridaj zberateľné predmety a prekážky s kolíziami.

Signály:
Pripoj signály na zmenu scén, zbieranie predmetov a interakcie s prekážkami.

Paralax pozadie:
Nastav 3 vrstvy pohybujúce sa rôznymi rýchlosťami v každom leveli.
