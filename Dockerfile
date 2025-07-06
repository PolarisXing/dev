FROM ubuntu:24.04

WORKDIR /root/
VOLUME workspace
COPY openjdk-21+35_linux-x64_bin.tar.gz /root/
RUN tar -xf openjdk-21+35_linux-x64_bin.tar.gz --directory /usr/local && echo "export PATH=/usr/local/jdk-21/bin:$PATH" >> .bashrc && apt update && apt install adb nmap sqlite3 -y

EXPOSE 8080

CMD ["java", "-jar", "web.jar"]
