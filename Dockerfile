from ubuntu


ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/New_York

RUN apt-get update && apt-get install curl gnupg2 -y 
RUN curl -s https://svtplay-dl.se/release-key.txt |  apt-key add -
RUN echo "deb https://apt.svtplay-dl.se/ svtplay-dl release" | tee /etc/apt/sources.list.d/svtplay-dl.list
RUN apt-get update && apt-get install svtplay-dl -y
