FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 git pip

RUN git clone https://github.com/pixelcatBR/mootube.git

RUN cd mootube/ && mkdir videos

RUN pip install flask yt-dlp --break-system-packages

WORKDIR mootube/

CMD ["python3", "main.py"]
