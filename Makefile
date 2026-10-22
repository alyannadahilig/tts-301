build: ttsDemo.jar

ttsDemo.jar: Main.class Speaker.class
	jar cfe ttsDemo.jar Main Main.class Speaker.class

Main.class: Main.java
	javac -cp ".:/usr/share/java/freetts-1.2.2.jar" Main.java

Speaker.class: Speaker.java
	javac -cp ".:/usr/share/java/freetts-1.2.2.jar" Speaker.java

run: build
	java -cp "ttsDemo.jar:/usr/share/java/*" Main

clean:
	rm -f *.class ttsDemo.jar