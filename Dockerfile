#FROM cjpro/centosoraclejdk
#ADD target/P2PServiceRegistory.jar //
#ADD logback-spring.xml //
#ENTRYPOINT ["java", "-Xmx512m", "-Xss256k", "-Dspring.profiles.active=prod","-Dspring.cloud.config.uri=http://mithra-configuration-service:8888", "-jar", "/P2PServiceRegistory.jar"]
#

FROM openjdk:11
ADD target/aws-cicd.jar aws-cicd.jar
EXPOSE 8090
ENTRYPOINT ["java", "-jar", "aws-cicd.jar"]

#docker build -f Dockerfile -t aws-cicd:v1 .
#docker tag mithra-gateway-service:v1 kalanavw/mithra-gateway-service:v1
#docker run -p 8090:8090 --name mithra-gateway-service-container mithra-gateway-service -d