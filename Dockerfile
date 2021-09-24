FROM tomcat:latest
RUN apt update
RUN apt install default-jdk -y
RUN apt install maven -y
RUN cd ./work && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd ./work/boxfuse-sample-java-war-hello && mvn package
RUN cp ./work/boxfuse-sample-java-war-hello/target/hello-1.0.war ./webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]