FROM mcr.microsoft.com/dotnet/sdk:5.0.100

# Install Node.js
ENV NODE_VERSION 12.19.1
ENV NODE_DOWNLOAD_SHA 858c5201c9572a8ec797f6cb966669cd38d5b5181b93eb5917f9ebdf89471b9f
RUN curl -SL "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz" --output nodejs.tar.gz \
    && echo "$NODE_DOWNLOAD_SHA nodejs.tar.gz" | sha256sum -c - \
    && tar -xzf "nodejs.tar.gz" -C /usr/local --strip-components=1 \
    && rm nodejs.tar.gz \
    && ln -s /usr/local/bin/node /usr/local/bin/nodejs
