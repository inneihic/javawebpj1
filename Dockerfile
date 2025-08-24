# Stage 1: Build WAR bằng Maven
FROM maven:3.9.6-eclipse-temurin-17 AS builder
WORKDIR /app
COPY . .
RUN mvn -f JavaPJ1/pom.xml clean package -DskipTests

# Stage 2: Run với Tomcat
FROM tomcat:11.0.10-jdk17
COPY --from=builder /app/JavaPJ1/target/JavaPJ1.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080

CMD ["catalina.sh", "run"]
