FROM tomcat:latest
RUN apt update
RUN apt install default-jdk -y
RUN apt install maven -y
RUN cd /usr/local/tomcat/work
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd /usr/local/tomcat/work/boxfuse-sample-java-war-hello
RUN mvn package
RUN cp ./target/hello-1.0.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]