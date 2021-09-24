FROM tomcat:latest
RUN apt update
RUN apt install default-jdk -y
RUN apt install maven -y
RUN cd work
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello
RUN mvn -f ./work/boxfuse-sample-java-war-hello/pom.xml package
RUN cp ./boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]