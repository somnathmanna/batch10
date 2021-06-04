FROM openjdk:8-jdk-alpine
COPY ./target/my-test-app*.jar /usr/app
MAINTAINER somnath.sts@gmail.com
WORKDIR /usr/app
EXPOSE 8888
RUN sh -c 'touch my-test-app*.jar'
ENTRYPOINT ["java", "-jar", "my-test-app*.jar"]
