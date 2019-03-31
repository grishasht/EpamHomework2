run: package
	java -jar Main.jar
	
run_after:
	java -jar ../resources/Main.jar
	
build: 
	javac -cp ../lib/junit-4.12.jar:../lib/hamcrest-core-1.3.jar ../com/Main.java -d ./

package: build
	jar cfm Main.jar META-INF/manifest.mf org/ com/Main.class
	
clean_after:
	rm -r ../resources/*.class ../resources/*.mf ../resources/*.jar
	
clean_before:
	rm -r com/*.class *.jar

commit:
	mv com/*.class ./*.jar ../resources/
	cp -r META-INF ../resources/
