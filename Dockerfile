# Stage 1: Build WAR bằng Maven
FROM maven:3.9.6-eclipse-temurin-17 AS builder
WORKDIR /app
COPY JavaPJ1 ./JavaPJ1
RUN mvn -f JavaPJ1/pom.xml clean package -DskipTests

# Stage 2: Run với Tomcat
FROM tomcat:9.0-jdk17
COPY --from=builder /app/JavaPJ1/target/untitled.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
