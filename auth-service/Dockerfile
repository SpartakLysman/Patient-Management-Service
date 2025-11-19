# Stage 1: Build
FROM maven:3.9.9-eclipse-temurin-21 AS builder

WORKDIR /app

# 1 Copy only pom.xml first to leverage Docker cache
COPY pom.xml .

# 2 Download dependencies without building
RUN mvn dependency:go-offline -B

# 3 Copy source code and build
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Run
FROM eclipse-temurin:21-jdk AS runner

WORKDIR /app

# 4 Copy the built jar
COPY --from=builder /app/target/auth-service-0.0.1-SNAPSHOT.jar ./app.jar

# 5 Expose application port
EXPOSE 4005

# 6 Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
