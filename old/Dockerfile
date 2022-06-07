FROM bitnami/aspnet-core:latest

#ARG HTTPS_PROXY

#USER ContainerAdministrator
WORKDIR /app

# ENV ARTIFACTORY_URL ... opa.exe

#RUN Write-Host "Downloading OPA from: ${}"; \
#	Invoke-WebRequest -Uri $env:ARTIFACTORY_URL -Proxy $env:HTTPS_PROXY -OutFile C:\app\opa.exe

#COPY ./bundle.tar.gz ./
COPY ./opa-config.yaml ./
COPY ./opa.exe ./

EXPOSE 80 8181 443

#USER ContainerAdministrator
#ENTRYPOINT ["opa.exe", "run", "--log-level=debug", "-s", "-c", "config.yaml", "-b", "bundle.tar.gz", "--skip-version-check"]
ENTRYPOINT ["opa.exe", "run", "--log-level=debug", "-s", "-c", "opa-config.yaml"]