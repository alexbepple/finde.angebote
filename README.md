Beschreibung
============

Findet, sortiert und filtert Angebote, um sie leichter als Referenz verwenden zu können.

Motivation
==========

Die Suche nach Teilstrings in Dateinamen liefert wenig hilfreiche Ergebnisse. Zum Beispiel bekommt man mit `find . -iname *tdd*` etwas in dieser Art:

    ./Firma/20110328tdd_firma.doc
    ./Firma/20110328tdd_firma.pdf
    ./Mart/tdd_mart_10-12-10.doc
    ./Mart/tdd_mart_10-12-10.pdf

Probleme mit dieser Ausgabe:

* Man bekommt alle Dateiformate aufgelistet. Eins würde reichen.
* Die Angebote sind lexikographisch nach Pfad sortiert. Eine Sortierung nach Erstellungsdatum wäre hilfreich.

Genau das leistet `finde.angebote`:

    > finde.angebote *tdd* 

    ./Mart/tdd_mart_10-12-10.pdf
    ./Firma/20110328tdd_firma.pdf


Installation
============

1. Clone the repo.
2. Create a symbolic link to `finde.angebote.sh` somewhere on your `$PATH`.


Development
===========

* Bundler to manage dependencies


Testing
-------

* [Guard](https://github.com/guard/guard) for continuous testing. Fire up the tests with

        ./test.all.the.fucking.time

