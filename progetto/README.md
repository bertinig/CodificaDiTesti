# Progetto Codifica di Testi

Il progetto è stato realizzato da Giulia Bertini per l'esame di Codifica di Testi del professor Angelo Mario Del Grosso del Corso di Laurea in Informatica Umanistica nell'anno accademico 2022/2023. 

## Requisiti

[Xerces J-bin 2.12.2](https://xerces.apache.org/mirrors.cgi) 

[SaxonJ-HE 12.3](https://www.saxonica.com/download/java.xml)

## Comando per la validazione XML tramite Xerces
```
java -cp "xerces_2-12-2/*" dom.Counter -v codifica.xml
```

## Comando per la generazione del documento HTML di output tramite il processore XSLT Saxon
```
java -jar SaxonHE12-3J/saxon-he-12.3.jar -s:codifica.xml -xsl:stileCodifica.xsl -o:index.html
```

## Image Map Resizer
Il codice del file imageMapResizer.js è stato preso da [David J. Bradshaw](https://github.com/davidjbradshaw/image-map-resizer/tree/master). 

Si tratta di una libreria che rende responsive un'immagine mappata in HTML.
