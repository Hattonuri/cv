FROM ubuntu:20.04

COPY . /resume

ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update                                  \
    && apt-get upgrade                              \
    && apt-get install -y texlive-latex-base        \
                          texlive-fonts-recommended \
                          texlive-fonts-extra       \
                          texlive-latex-extra

CMD ["pdflatex",                                    \
     "-interaction=nonstopmode",                    \
     "-halt-on-error",                              \
     "-output-directory","/resume",                 \
     "main.tex"]

