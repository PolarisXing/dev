FROM ubuntu:24.04

WORKDIR /root/
VOLUME workspace
COPY jdk-21 /usr/local
RUN echo "export PATH=/usr/local/jdk-21/bin:$PATH" >> .bashrc && apt update && apt install adb nmap sqlite3 -y

EXPOSE 8080

CMD ["java", "-jar", "web.jar"]
