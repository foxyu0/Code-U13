FROM openjdk:17
VOLUME /tmp
ADD target/code-u13.jar app.jar
EXPOSE 4562
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Xms128m","-Xmx128m","-jar","/app.jar","--spring.profiles.active=dev","-c"]