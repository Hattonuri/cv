FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update                                  \
    && apt-get upgrade                              \
    && apt-get install -y texlive-latex-base        \
                          texlive-fonts-recommended \
                          texlive-fonts-extra       \
                          texlive-latex-extra

RUN ls / && ls /CV 

CMD ["pdflatex",                                    \
     "-interaction=nonstopmode",                    \
     "-halt-on-error",                              \
     "-output-directory","/CV",                     \
     "/CV/main.tex"]

