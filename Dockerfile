FROM tomcat:latest
RUN apt update



EXPOSE 8080
CMD ["catalina.sh", "run"]