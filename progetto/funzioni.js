$(document).ready(function(){
    // funzione per il resize dinamico dell'areamap
    $("map").imageMapResize();

    // funzioni per il menù responsive
    $("#apriMenu").click(function(){
        $("#apriMenu").hide();
        $(".chiudi").show();
        $(".respMenuTendina").show();
    });

    $("#chiudiMenu").click(function(){
        $(".chiudi").hide();
        $("#apriMenu").show();
        $(".respMenuTendina").hide();
    });

    // funzioni sez. descrizione
    // bottone *dettagli*
    $("#nascostoUno").hide();
    $("#primoTit").click(function(){
        $("#nascostoUno").toggle();
        $(".mostra1").toggle();
        $(".nascondi1").toggle();
    });

    // bottone *descrizione fisica*
    $("#nascostoDue").hide();
    $("#secondoTit").click(function(){
        $("#nascostoDue").toggle();
        $(".mostra2").toggle();
        $(".nascondi2").toggle();
    });
    
    // bottone *conservazione*
    $("#nascostoTre").hide();
    $("#terzoTit").click(function(){
        $("#nascostoTre").toggle();
        $(".mostra3").toggle();
        $(".nascondi3").toggle();
    });

    // funzioni focus riga 
    $(".areaRiga").mouseover(function(){
        var idRiga=this.id;
        idRiga="#"+idRiga;
        document.getElementById(idRiga).classList.add("rigaSelezionata");
    });

    
    $(".areaRiga").mouseout(function(){
        var idRiga=this.id;
        idRiga="#"+idRiga;
        document.getElementById(idRiga).classList.remove("rigaSelezionata");
    });

    // funzioni testo trascritto
    // bottone *cancellature*
    $("#btnCanc7").click(function(){
        $("#btnCanc7").toggleClass("cancOn");
        $("div#testo107 .del").toggle();
        $("div#testo107 .del").css("color", "#0823bf");
        $("div#testo107 .del").css("text-decoration", "line-through");
    });
    $("#btnCanc8").click(function(){
        $("#btnCanc8").toggleClass("cancOn");
        $("div#testo10 .del").toggle();
        $("div#testo108 .del").css("color", "#0823bf");
        $("div#testo108 .del").css("text-decoration", "line-through");
    });
    $("#btnCanc9").click(function(){
        $("#btnCanc9").toggleClass("cancOn");
        $("div#testo109 .del").toggle();
        $("div#testo109 .del").css("color", "#0823bf");
        $("div#testo109 .del").css("text-decoration", "line-through");
    });

    // bottone *errori*
    $("#btnErr7").click(function(){
        $("#btnErr7").toggleClass("errOn");
        $("div#testo107 .corr").toggle();
        $("div#testo107 .sic").toggle();
        $("div#testo107 .sic").css("background-color", "#fc685d");
    });
    $("#btnErr8").click(function(){
        $("#btnErr8").toggleClass("errOn");
        $("div#testo108 .corr").toggle();
        $("div#testo108 .sic").toggle();
        $("div#testo108 .sic").css("background-color", "#fc685d");
    });
    $("#btnErr9").click(function(){
        $("#btnErr9").toggleClass("errOn");
        $("div#testo109 .corr").toggle();
        $("div#testo109 .sic").toggle();
        $("div#testo109 .sic").css("background-color", "#fc685d");
    });

    // bottone *forma non normalizzata*
    $("#btnNonForm7").click(function(){
        $("#btnNonForm7").toggleClass("nonFormOn");
        $("div#testo107 .reg").toggle();
        $("div#testo107 .orig").toggle();
        $("div#testo107 .orig").css("background-color", "#fce25d");

    });
    $("#btnNonForm8").click(function(){
        $("#btnNonForm8").toggleClass("nonFormOn");
        $("div#testo108 .reg").toggle();
        $("div#testo108 .orig").toggle();
        $("div#testo108 .orig").css("background-color", "#fce25d");
    });
    $("#btnNonForm9").click(function(){
        $("#btnNonForm9").toggleClass("nonFormOn");
        $("div#testo109 .reg").toggle();
        $("div#testo109 .orig").toggle();
        $("div#testo109 .orig").css("background-color", "#fce25d");
    });

    // bottone *aggiunte autore*
    $("#btnAggAut7").click(function(){
        $("#btnAggAut7").toggleClass("addOn");
        if($("#btnAggAut7").hasClass("addOn")){
            $("div#testo107 .add").css("background-color", "#029e2b");
            $("div#testo107 .add").css("text-decoration", "underline")
        } else {
            $("div#testo107 .add").css("color", "black");
            $("div#testo107 .add").css("text-decoration", "none")
        }
    })
    $("#btnAggAut8").click(function(){
        $("#btnAggAut8").toggleClass("addOn");
        if($("#btnAggAut8").hasClass("addOn")){
            $("div#testo108 .add").css("color", "#029e2b");
            $("div#testo108 .add").css("text-decoration", "underline")
        } else {
            $("div#testo108 .add").css("color", "black");
            $("div#testo108 .add").css("text-decoration", "none")
        }
    })
    $("#btnAggAut9").click(function(){
        $("#btnAggAut9").toggleClass("addOn");
        if($("#btnAggAut9").hasClass("addOn")){
            $("div#testo109 .add").css("color", "#029e2b");
            $("div#testo109 .add").css("text-decoration", "underline")
        } else {
            $("div#testo109 .add").css("color", "black");
            $("div#testo109 .add").css("text-decoration", "none")
        }
    })

    // bottone *aggiunte codificatore*
    $("#btnAggCod7").click(function(){
        $("#btnAggCod7").toggleClass("suppliedOn");
        if($("#btnAggCod7").hasClass("suppliedOn")){
            $("div#testo107 .supplied").css("color", "#6c22d4");
            $("div#testo107 .supplied").css("text-decoration", "underline")
        } else {
            $("div#testo107 .supplied").css("color", "none");
            $("div#testo107 .supplied").css("text-decoration", "none")
        }
    })
    $("#btnAggCod8").click(function(){
        $("#btnAggCod8").toggleClass("suppliedOn");
        if($("#btnAggCod8").hasClass("suppliedOn")){
            $("div#testo108 .supplied").css("color", "#6c22d4");
            $("div#testo108 .supplied").css("text-decoration", "underline")
        } else {
            $("div#testo108 .supplied").css("color", "black");
            $("div#testo108 .supplied").css("text-decoration", "none")
        }
    })
    $("#btnAggCod9").click(function(){
        $("#btnAggCod9").toggleClass("suppliedOn");
        if($("#btnAggCod9").hasClass("suppliedOn")){
            $("div#testo109 .supplied").css("color", "#6c22d4");
            $("div#testo109 .supplied").css("text-decoration", "underline")
        } else {
            $("div#testo109 .supplied").css("color", "black");
            $("div#testo109 .supplied").css("text-decoration", "none")
        }
    })

    // bottone *espandi abbreviazioni*
    $("#btnExpanAbbr7").click(function(){
        $("#btnExpanAbbr7").toggleClass("expanOn");
        $("div#testo107 .abbr").toggle();
        $("div#testo107 .expan").toggle();
        $("div#testo107 .expan").css("color", "#383838")
        $("div#testo107 .expan").css("text-decoration", "underline");
    });
    $("#btnExpanAbbr8").click(function(){
        $("#btnExpanAbbr8").toggleClass("expanOn");
        $("div#testo108 .abbr").toggle();
        $("div#testo108 .expan").toggle();
        $("div#testo108 .expan").css("color", "#383838")
        $("div#testo108 .expan").css("text-decoration", "underline");
    });
    $("#btnExpanAbbr9").click(function(){
        $("#btnExpanAbbr9").toggleClass("expanOn");
        $("div#testo109 .abbr").toggle();
        $("div#testo109 .expan").toggle();
        $("div#testo109 .expan").css("color", "#383838")
        $("div#testo109 .expan").css("text-decoration", "underline");
    });

    // bottone *persone*
    $("#btnPers7").click(function(){
        $("#btnPers7").toggleClass("persOn");
        if($("#btnPers7").hasClass("persOn")){
            $("div#testo107 .persName").css("background-color", "#faacf7");
        } else {
            $("div#testo107 .persName").css("background-color", "#F1F1F2");
        }
    });
    $("#btnPers8").click(function(){
        $("#btnPers8").toggleClass("persOn");
        if($("#btnPers8").hasClass("persOn")){
            $("div#testo108 .persName").css("background-color", "#faacf7");
        } else {
            $("div#testo108 .persName").css("background-color", "#F1F1F2");
        }
    });
    $("#btnPers9").click(function(){
        $("#btnPers9").toggleClass("persOn");
        if($("#btnPers9").hasClass("persOn")){
            $("div#testo109 .persName").css("background-color", "#faacf7");
        } else {
            $("div#testo109 .persName").css("background-color", "#F1F1F2");
        }
    });
    
    // bottone *luoghi*
    $("#btnLuoghi7").click(function(){
        $("#btnLuoghi7").toggleClass("placeOn");
        if($("#btnLuoghi7").hasClass("placeOn")){
            $("div#testo107 .placeName").css("background-color", "#f5ab76");
        } else {
            $("div#testo107 .placeName").css("background-color", "#F1F1F2");
        }
    });
    $("#btnLuoghi8").click(function(){
        $("#btnLuoghi8").toggleClass("placeOn");
        if($("#btnLuoghi8").hasClass("placeOn")){
            $("div#testo108 .placeName").css("background-color", "#f5ab76");
        } else {
            $("div#testo108 .placeName").css("background-color", "#F1F1F2");
        }
    });
    $("#btnLuoghi9").click(function(){
        $("#btnLuoghi9").toggleClass("placeOn");
        if($("#btnLuoghi9").hasClass("placeOn")){
            $("div#testo109 .placeName").css("background-color", "#f5ab76");
        } else {
            $("div#testo109 .placeName").css("background-color", "#F1F1F2");
        }
    });
});