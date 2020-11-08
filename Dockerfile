FROM mcr.microsoft.com/dotnet/core/sdk:3.1.403

# Install Node.js
ENV NODE_VERSION 12.19.0
ENV NODE_DOWNLOAD_SHA f37a5bf0965e8ab7b1b078392638778286ceee8fdb895c050889a61772944bda
RUN curl -SL "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz" --output nodejs.tar.gz \
    && echo "$NODE_DOWNLOAD_SHA nodejs.tar.gz" | sha256sum -c - \
    && tar -xzf "nodejs.tar.gz" -C /usr/local --strip-components=1 \
    && rm nodejs.tar.gz \
    && ln -s /usr/local/bin/node /usr/local/bin/nodejs
