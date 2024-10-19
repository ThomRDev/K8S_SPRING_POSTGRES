# correr mi app en un contenedor
# algo fast

FROM eclipse-temurin:21-jre

ADD target/*.jar app.jar
RUN sh -c 'touch /app.jar'
EXPOSE 8080
ENTRYPOINT [ "sh", "-c", "java -jar /app.jar" ]

# con dockerfile para crear una iamgen de docker
# docker build -t thomrdev/bookmarker-api .

# con maven para crear una iamgen de docker
# ./mvnw spring-boot:build-image -Dspring-boot.build-image.imageName=thomrdev/bookmarker-api
# si en pom esta el nombre de la imagne
# solo ejecutar ./mvnw spring-boot:build-image


# docker run -p 8080:8080 thomrdev/bookmarker-api