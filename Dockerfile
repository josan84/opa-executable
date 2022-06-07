FROM mcr.microsoft.com/windows/servercore:ltsc2022

COPY ./opa-config.yaml ./
COPY ./opa.exe ./
EXPOSE 80 8181 443

ENTRYPOINT ["opa.exe", "run", "--log-level=debug", "-s", "-c", "opa-config.yaml"]