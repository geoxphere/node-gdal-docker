FROM osgeo/gdal:ubuntu-small-3.2.2
ENV NODE_VERSION=15.11.0

#Download the tarball for node
RUN curl https://nodejs.org/download/release/v${NODE_VERSION}/node-v$NODE_VERSION-linux-x64.tar.gz --create-dirs -o /node_${NODE_VERSION}.tar.gz

#Extract tarball and delete the original file
RUN mkdir /node && \
    tar -xf /node_${NODE_VERSION}.tar.gz --strip-components=1 -C /node && \
    rm /node_${NODE_VERSION}.tar.gz

#Set node path
ENV PATH=$PATH:/node/bin


