# Використовуємо офіційний образ JDK 17
FROM eclipse-temurin:17-jdk

# Встановлюємо Maven
RUN apt-get update && apt-get install -y maven

# Встановлюємо робочу директорію в контейнері
WORKDIR /app

# Копіюємо всі файли проєкту
COPY . .

# Збираємо JAR-файл
RUN mvn clean package

# Запускаємо додаток
CMD ["java", "-jar", "target/lab2-1.0-SNAPSHOT.jar"]
