run: app.jar
	java -jar app.jar

app.jar: app.kt
	kotlinc app.kt -include-runtime -d app.jar

clean:
	rm app.jar
