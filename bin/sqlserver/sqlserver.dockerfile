FROM mcr.microsoft.com/mssql/server:2019-latest
ARG BAK_FILE
ARG SA_PASSWORD
ENV SA_PASSWORD=${SA_PASSWORD}
EXPOSE 1433
WORKDIR /
COPY $BAK_FILE ./adventureworks.bak
COPY ./install.sql .
COPY ./install.sh .
COPY ./startup.sh .
CMD /bin/bash ./startup.sh