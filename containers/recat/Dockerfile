FROM dynverse/dynwrap:r

RUN R -e 'devtools::install_github("dynverse/reCAT")'

ADD . /code

ENTRYPOINT Rscript /code/run.R
