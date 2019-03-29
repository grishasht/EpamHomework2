run: package
	java -jar Main.jar

run_after:
	java -jar resources/Main.jar
	
build: 
	javac -cp ./lib/BuildExample-1.0-SNAPSHOT-jar-with-dependencies.jar com/Main.java

package: build
	jar cfm Main.jar ./com/manifest.mf com/Main.class
	
clean_after:
	rm -r resources/*.class resources/*.mf resources/*.jar
	
clean_before:
	rm -r com/*.class *.jar

commit:
	mv com/*.class *.jar resources/
	cp com/manifest.mf resources/
