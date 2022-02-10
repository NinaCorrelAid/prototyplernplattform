### Testing der Applikation
# Da Ihr Eure Plattform lokal über "Run Document" im Hauptdokument testen könnt,
# schauen wir hier nur, ob die gehostete Applikation erreichbar ist.

# Den Status eine Applikation erfragt Ihr über httr::GET("EureUrl")$status
library(httr)
app_state <- httr::GET("https://correlaid.shinyapps.io/prototyplernplattform")$status

# Der Statuscode 200 bedeutet "ok" - eine Übersicht findet Ihr hier: https://umbraco.com/knowledge-base/http-status-codes/
if (app_state != 200){
  # Wirf einen Fehler
  quit(status=1)
} else {
  # Tu nichts
}

# Am Einfachsten ist es für Euch nun einen Account bei GitHub (github.com) anzulegen.
# Dort könnt Ihr Eure Applikation hinterlegen und diese Verbindung sogar in RStudio pflegen (GitHub oben rechtes Fenster)
# Die YAML-Datei im Ordner ".github/workflows" führt dann dieses Script zu jeder vollen Stunde zwischen 8 und 20 Uhr aus (cron: '00 8,9,10,11,12,13,14,15,16,17,18,19,20 * * *')
# Falls die Applikation auf shinyapps.io offline ist, bekommt Ihr dann eine E-Mail an die Mail, die Ihr bei GitHub hinterlegt habt