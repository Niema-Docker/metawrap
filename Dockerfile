# Minimal Docker image for MetaWRAP using Micromamba base
FROM mambaorg/micromamba:debian13-slim

# install MetaWRAP
RUN micromamba create -y -n metawrap -c defaults -c conda-forge -c bioconda -c ursky metawrap-mg==1.3 && \
    micromamba clean --all --yes
ENV ENV_NAME=metawrap
