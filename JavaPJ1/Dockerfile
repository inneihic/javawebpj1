# Build stage: đóng gói WAR nếu bạn sử dụng Maven hoặc Ant
FROM maven:3.8-openjdk-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Run stage: dùng Tomcat để chạy WAR
FROM tomcat:9.0-jdk17
COPY --from=builder /app/target/JavaPJ1.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
