FROM mcr.microsoft.com/dotnet/sdk:6.0

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - &&\
    apt-get install -y nodejs curl &&\
    rm -r /var/lib/apt/lists/*

RUN npm install -g nswag

ENTRYPOINT [ "nswag" ]