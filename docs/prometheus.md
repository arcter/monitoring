# Prometheus

Under Construction

## Mi ez?
A felirakoztatott hosztok metrikáit kéri le , illetve adja át. A hosztokon exporter szükséges a metrikák lekérésére. Az adatokat egy lokális adat bázisban tárolja. Ez a tárolás csak rövid távú hosszú távra *Victoria Metrics*-et használunk az adatok jobb tömörítése végett.
Az adatok elérésének két módja létezik írás és olvasás. Fontos megjegyezni hogy ha nem kérjük le az adatokat Prometheustól, az akkor is végig kérdezi a hosztokat.

További adatok [itt](https://www.markdownguide.org/basic-syntax/) érhetőek el.

## Mik azok a metrikák?
A metrikák **kulcs:érték** -párként írják le a hoszt valós adatait.
 Pl.: ```prometheus_tsdb_compaction_duration_seconds_bucket{le="1"} 0```  
 Felépítése: Metrika neve {metrika címkéi} numerikus értéke

## Push Gateway használata
Ha a monitorozni kívánt szolgáltatás vagy hoszt nem fut elég(pl.: cron job) ideig az esetben szükséges a Push Gateway használata. Hasonlóan kezelendők a NAT mögötti hosztok is.