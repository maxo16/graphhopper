@echo off
REM changing the directory
cd C:\Users\Derek\Documents\CS_work\graphhopper
REM opening the browser - has to open first because graphhopper runs until exited
start chrome http://localhost:8989/
REM starting graphhopper
java -jar graphhopper-web-0.5.0-with-dep.jar jetty.resourcebase=webapp config=config-example.properties osmreader.osm=berlin-latest.osm.pbf
