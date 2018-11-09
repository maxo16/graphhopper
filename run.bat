REM keep the lines that delete the graph-cache as it can't be used by other modes.

REM appears to delete the contents of graph-cache folder
REM had problems with getting it to used cached graphs, really no idea why.
DEL /F/Q/A graph-cache

REM actually removes graph-cache folder
rmdir graph-cache


REM looks like they moved the location of the graphhopper-web-0.11.0.jar file
REM and changed the name of it.
REM before running.

start chrome http://localhost:8989/

java -Xmx13G -Xms13G -Dgraphhopper.datareader.file=input_map.osm^
 -Dgraphhopper.graph.location=./graph-cache^
 -jar graphhopper-web-0.11.0.jar server input_config.yml

timeout 60
