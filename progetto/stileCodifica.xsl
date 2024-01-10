<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<!-- stylesheet è l'elemento radice -->
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:tei="http://www.tei-c.org/ns/1.0" 
    xmlns="http://www.w3.org/1999/xhtml">
<!-- istruzioni di elaborazione -->
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<!-- "/" significa che la regola è da applicare su tutto il documento -->
<xsl:template match="/">
    <html lang="it">
        <head>
            <meta charset="UTF-8"/>
            <meta name="author" content="Giulia Bertini"/>
            <meta name="viewport" content="width-device-width, initial-scale=1.0"/>
            <title><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='main']"/></title> 
            <!-- CSS -->
            <link rel="stylesheet" href="stile.css"/> 
            <!-- JQuery -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> 
            <script src="imageMapResizer.js"></script>
            <script src="funzioni.js"></script>
        </head>
        <body>
            <header>
                <ul id="menu" class="menu">
                    <li><a href="#">Home</a></li>
                    <li><a href="#bio">Biografia</a></li>
                    <li><a href="#desc">Descrizione</a></li>
                    <li class="menuTendina">
                        <a href="#pagine" class="btnTendina">Pagine</a>
                        <div class="tendina"> 
                            <a href="#pag107">107</a>
                            <a href="#pag108">108</a>
                            <a href="#pag109">109</a>
                        </div>
                    </li>
                    <li><a href="#footer">About</a></li>
                </ul>
                <!-- menù responsive di default nascosto -->
                <div class="respMenu">
                    <div class="apri">
                        <img src="img/apri.png" id="apriMenu" alt="icona menu"/>
                    </div>
                    <div class="chiudi" id="btnChiudiMenu">
                        <img src="img/chiudi.png" id="chiudiMenu" alt="icona menu"/> 
                    </div>
                    <div class="respMenuTendina" id="respMenuTendina">
                        <a href="#">Home</a>
                        <a href="#bio">Biografia</a>
                        <a href="#desc">Descrizione</a>
                        <a href="#pag107">Pagina 107</a>
                        <a href="#pag108">Pagina 108</a>
                        <a href="#pag109">Pagina 109</a>
                        <a href="#footer">About</a>
                    </div>
                </div>
            </header>
            <main id="content">
                <!-- inizio home -->
                <div class="home">
                    <div id="immagine">
                        <img src="img/EmArtom.jpeg" alt="Ritratto di Emanuele Artom" id="imgEA"/> 
                    </div>
                    <div id="titolo">
                        <h1><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='main']"/></h1>
                        <h2><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='sub']"/></h2>
                    </div>
                </div>
                <!-- inizio biografia -->
                <div id="bio">
                    <h2 class="titArt">Biografia</h2>
                    <article class="art">
                        <p>Emanuele Artom nasce ad Aosta il 23 giugno 1915, figlio di Emilio ed Amalia Segre. Tra i collaboratori del grande Dizionario enciclopedico Utet già dal 1935, nel novembre 1937 ottiene la laurea in lettere presso l'Università di Torino e, sempre nel 1937, in collaborazione con Guido Bonfiglioli pubblica il volume "Elena o della Parodia". 
                        Qualche anno dopo, nel 1941 pubblica la prima edizione dei "Principi di storia e cultura ebraica", in seguito più volte ristampato. Antifascista, nel maggio 1943 Artom si iscrive al Partito d'Azione. Dopo l'armistizio, con il nome di Eugenio Ansaldi, si arruola tra i partigiani come delegato azionista in una brigata garibaldina di Barge. 
                        In seguito viene nominato commissario politico delle bande "Italia Libera" operanti in Val Pellice e Val Germanasca. Catturato dai fascisti nel marzo 1944, Artom viene consegnato ai tedeschi e rinchiuso nelle Carceri Nuove di Torino, dove il 7 aprile 1944 muore a causa delle torture inflittegli.</p>
                    </article>
                </div>
                <!-- inizio descrizione -->
                <div id="desc">
                    <h2 class="titArt">Descrizione</h2>
                    <article class="art">
                        <div id="dettagli">
                            <button id="primoTit">
                                <h3>Dettagli <img src="img/frecciaGiu.png" alt="freccia giù" class="mostra1 icon"/> 
                                <img src="img/frecciaSu.png" alt="freccia sù" class="nascondi1 icon"/></h3>
                            </button>          
                            <div id="nascostoUno">
                                <ul class="noLista">
                                    <li>Titolo: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:title"/></li>
                                    <li>Autore: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:author"/></li>
                                    <li>Data: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:docDate/tei:date"/></li>
                                    <li>Lingua: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:textLang"/></li>
                                    <li>Storia editoriale: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:history/tei:origin"/></li>
                                    <li>Acquisizione: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:history/tei:acquisition"/></li>
                                </ul>
                            </div>
                        </div>
                        <div id="descFisica">
                            <button id="secondoTit">
                                <h3>Descrizione fisica <img src="img/frecciaGiu.png" alt="freccia giù" class="mostra2 icon"/> 
                                <img src="img/frecciaSu.png" alt="freccia sù" class="nascondi2 icon"/></h3>
                            </button>
                            <div id="nascostoDue">
                                <ul class="noLista"> 
                                    <li>Supporto: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support"/></li>
                                    <li>Pagine: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:extent/tei:measure"/></li>
                                    <li>Condizioni: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"/></li>
                                    <li>Autore: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:handDesc/tei:handNote"/></li>
                                    <li>Layout: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:layoutDesc/tei:layout"/></li>
                                </ul>
                            </div>
                        </div>
                        <div id="conservaz">
                            <button id="terzoTit">
                                <h3>Conservazione <img src="img/frecciaGiu.png" alt="freccia giù" class="mostra3 icon"/> 
                                <img src="img/frecciaSu.png" alt="freccia sù" class="nascondi3 icon"/></h3>
                            </button>
                            <div id="nascostoTre">
                                <ul class="noLista"> 
                                    <li>Conservazione: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:institution/tei:orgName/tei:choice/tei:expan"/></li>
                                    <li>Fondo: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:collection"/></li>
                                    <li>Codice: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:idno"/></li>
                                    <li>Luogo: <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:settlement"/></li>
                                </ul>
                            </div>
                        </div>
                    </article>
                </div>
                <!-- inizio pagina 107 -->
                <div class="pagina">
                    <!-- titolo e sottotitolo -->
                    <h2 class="titPag">Pagina 107</h2>
                    <br/> 
                    <div id="pag107">
                        <!-- immagine del diario -->              
                        <div id="img107" class="imgDiario">
                            <xsl:apply-templates select="//tei:surface[@n='1']"/>
                        </div>
                        <!-- testo trascritto del diario -->
                        <div id="testo107" class="testoDiario">
                            <xsl:apply-templates select="//tei:ab[@n='107']"/> 
                        </div>
                    </div>
                    <!-- spiegazione dei bottoni -->
                    <div class="testo">
                        <article class="info">
                            <p>
                                Cliccando sui bottoni sarà possibile vedere le modifiche apportate nella trascrizione digitale del testo rispetto alla pagina originale del diario.
                            </p>
                        </article>
                    </div>
                    <!-- lista bottoni -->
                    <div class="listaBtn">
                        <button type="button" id="btnCanc7" class="styleBtn">Cancellature</button>
                        <button type="button" id="btnErr7" class="styleBtn">Errori</button>
                        <button type="button" id="btnNonForm7" class="styleBtn">Forma non normalizzata</button>
                        <button type="button" id="btnAggAut7" class="styleBtn">Aggiunte autore</button>
                        <button type="button" id="btnAggCod7" class="styleBtn">Aggiunte codificatore</button>
                        <button type="button" id="btnExpanAbbr7" class="styleBtn">Espandi abbreviazioni</button>        
                        <button type="button" id="btnPers7" class="styleBtn">Persone</button>
                        <button type="button" id="btnLuoghi7" class="styleBtn">Luoghi</button>
                    </div>
                </div>
                <!-- inizio pagina 108 -->
                <div class="pagina">
                    <!-- titolo e sottotitolo -->
                    <h2 class="titPag">Pagina 108</h2>
                    <br/>
                    <div id="pag108">
                        <!-- immagine del diario -->              
                        <div id="img108" class="imgDiario">
                            <xsl:apply-templates select="//tei:surface[@n='2']"/>
                        </div>
                        <!-- testo trascritto del diario -->
                        <div id="testo108" class="testoDiario">
                            <xsl:apply-templates select="//tei:ab[@n='108']"/>
                        </div>
                    </div>
                    <!-- spiegazione dei bottoni -->
                    <div class="testo">
                        <article class="info">
                            <p>
                                Cliccando sui bottoni sarà possibile vedere le modifiche apportate nella trascrizione digitale del testo rispetto alla pagina originale del diario.
                            </p>
                        </article>
                    </div>
                    <!-- lista bottoni -->
                    <div class="listaBtn">
                        <button type="button" id="btnCanc8" class="styleBtn">Cancellature</button>
                        <button type="button" id="btnErr8" class="styleBtn">Errori</button>
                        <button type="button" id="btnNonForm8" class="styleBtn">Forma non normalizzata</button>
                        <button type="button" id="btnAggAut8" class="styleBtn">Aggiunte autore</button>
                        <button type="button" id="btnAggCod8" class="styleBtn">Aggiunte codificatore</button>
                        <button type="button" id="btnExpanAbbr8" class="styleBtn">Espandi abbreviazioni</button>
                        <button type="button" id="btnPers8" class="styleBtn">Persone</button>
                        <button type="button" id="btnLuoghi8" class="styleBtn">Luoghi</button>
                    </div>
                </div>
                <!-- inizio pagina 109 -->
                <div class="pagina">
                    <!-- titolo e sottotitolo -->
                    <h2 class="titPag">Pagina 109</h2>
                    <br/>
                    <div id="pag109">
                        <!-- immagine del diario -->              
                        <div id="img109" class="imgDiario">
                            <xsl:apply-templates select="//tei:surface[@n='3']"/>
                        </div>
                        <!-- testo trascritto del diario -->
                        <div id="testo109" class="testoDiario">
                            <xsl:apply-templates select="//tei:ab[@n='109']"/>
                        </div>
                    </div>
                    <!-- spiegazione dei bottoni -->
                    <div class="testo">
                        <article class="info">
                            <p>
                                Cliccando sui bottoni sarà possibile vedere le modifiche apportate nella trascrizione digitale del testo rispetto alla pagina originale del diario.
                            </p>
                        </article>
                    </div>
                    <!-- lista bottoni -->
                    <div class="listaBtn">
                        <button type="button" id="btnCanc9" class="styleBtn">Cancellature</button>
                        <button type="button" id="btnErr9" class="styleBtn">Errori</button>
                        <button type="button" id="btnNonForm9" class="styleBtn">Forma non normalizzata</button>
                        <button type="button" id="btnAggAut9" class="styleBtn">Aggiunte autore</button>
                        <button type="button" id="btnAggCod9" class="styleBtn">Aggiunte codificatore</button>
                        <button type="button" id="btnExpanAbbr9" class="styleBtn">Espandi abbreviazioni</button>
                        <button type="button" id="btnPers9" class="styleBtn">Persone</button>
                        <button type="button" id="btnLuoghi9" class="styleBtn">Luoghi</button>
                    </div>
                </div>
            </main>     
            <footer id="about">
                <div id="footer">
                    <p><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:edition"/></p>
                    <p><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt//tei:respStmt"/></p>
                    <p><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt"/></p>
                </div>
            </footer>
        </body>
    </html>
</xsl:template>
<!-- immagini del diario -->
<xsl:template match="tei:surface">
    <xsl:element name="img">
        <xsl:attribute name="class">imgDiario</xsl:attribute>
        <xsl:attribute name="src"><xsl:apply-templates select="tei:graphic/@url"/></xsl:attribute>
        <xsl:attribute name="usemap">#<xsl:value-of select="@xml:id"/></xsl:attribute>
    </xsl:element>
    <xsl:element name="map">
        <xsl:attribute name="name"><xsl:value-of select="@xml:id"/></xsl:attribute>
        <xsl:for-each select="tei:zone">
            <xsl:element name="area">
                <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                <xsl:attribute name="class">areaRiga</xsl:attribute>
                <xsl:attribute name="coords"><xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/></xsl:attribute>
            </xsl:element>
        </xsl:for-each>
    </xsl:element>
</xsl:template>
<!-- inzio riga -->
<xsl:template match="tei:lb">
    <xsl:if test="@n != 1">
        <br/>
    </xsl:if>
    <xsl:element name="span">
        <xsl:attribute name="id">
            <xsl:value-of select="@facs"/>
        </xsl:attribute>
        <xsl:attribute name="class">numeroRiga</xsl:attribute>
        <xsl:value-of select="@n"/>
    </xsl:element>
</xsl:template>
<!-- cancellature -->
<xsl:template match="tei:del">
    <span class="del" hidden="hidden">
        <xsl:apply-templates/>
    </span>
</xsl:template>
<!-- elementi incomprensibili -->
<xsl:template match="tei:gap">
    <span class="gap" hidden="hidden"> ?
    </span>
</xsl:template>
<!-- abbr -->
<xsl:template match="tei:abbr">
    <span class="abbr">
        <xsl:value-of select="."/>
    </span>
</xsl:template>
<!-- expan -->
<xsl:template match="tei:expan">
    <span class="expan" hidden="hidden">
        <xsl:value-of select="."/>
    </span>
</xsl:template>
<!-- aggiunte codificatore -->
<xsl:template match="tei:supplied">
    <span class="supplied">
        <xsl:value-of select="."/>
    </span>
</xsl:template>
<!-- originale -->
<xsl:template match="tei:orig">
    <span class="orig" hidden="hidden">
        <xsl:value-of select="."/>
    </span>
</xsl:template>
<!-- normalizzazione -->
<xsl:template match="tei:reg">
    <span class="reg">
        <xsl:value-of select="."/>
    </span>
</xsl:template>
<!-- errore -->
<xsl:template match="tei:sic">
    <span class="sic" hidden="hidden">
        <xsl:value-of select="."/>
    </span>
</xsl:template>
<!-- correzione -->
<xsl:template match="tei:corr">
    <span class="corr">
        <xsl:value-of select="."/>
    </span>
</xsl:template>
<!-- aggiunte add -->
<xsl:template match="tei:add">
    <span class="add">
        <xsl:apply-templates/>
    </span>
</xsl:template>
<!-- nomi di persona -->
<xsl:template match="tei:persName">
    <span class="persName">
        <xsl:apply-templates/>
    </span>
</xsl:template>
<!-- luoghi -->
<xsl:template match="tei:placeName">
    <span class="placeName">
        <xsl:apply-templates/>
    </span>
</xsl:template>
</xsl:stylesheet>