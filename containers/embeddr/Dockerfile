FROM dynverse/dynwrap:bioc

RUN R -e 'devtools::install_github("dynverse/scaterlegacy")'
RUN R -e 'devtools::install_github("dynverse/embeddr")'

ADD . /code

ENTRYPOINT Rscript /code/run.R
