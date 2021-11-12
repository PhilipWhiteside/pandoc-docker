FROM ubuntu:hirsute

RUN apt-get update

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ="Europe/London"
RUN apt-get install -y tzdata

RUN apt-get install -y pandoc
RUN apt-get install -y texlive-base

RUN apt-get install -y texlive-fonts-recommended
RUN apt-get install -y texlive-fonts-recommended-doc
RUN apt-get install -y texlive-latex-recommended
RUN apt-get install -y texlive-latex-recommended-doc

RUN apt-get install -y texlive-latex-extra
RUN apt-get install -y texlive-fonts-extra

WORKDIR /data
