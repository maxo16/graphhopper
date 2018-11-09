REM start by getting Portland to work

REM appears to delete the contents of graph-cache folder
DEL /F/Q/A graph-cache

REM actually removes graph-cache folder
rmdir graph-cache

start chrome http://localhost:8989/

java -Xmx13G -Xms13G -Dgraphhopper.datareader.file=stockton.osm^
 -Dgraphhopper.gtfs.file=RTD-GTFS.zip^
 -Dgraphhopper.graph.flag_encoders=pt^
 -Dgraphhopper.prepare.ch.weightings=no^
 -Dgraphhopper.graph.location=./graph-cache^
 -jar web/target/graphhopper-web-0.11-SNAPSHOT.jar server config.yml

timeout 60
