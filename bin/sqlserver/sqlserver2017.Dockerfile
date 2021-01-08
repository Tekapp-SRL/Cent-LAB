# Adventure Works Database on SQL Server 2019
FROM mcr.microsoft.com/mssql/server:2017-latest

ENV SA_PASSWORD=Tekapp2021!
ENV ACCEPT_EULA=Y

# Change to root user to run wget and move the file
USER root

RUN wget -progress=bar:force -q -O AdventureWorks2017.bak https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2017.bak 
RUN chmod 777 AdventureWorks2017.bak 
RUN mkdir /var/opt/mssql
RUN mkdir /var/opt/mssql/backup 
RUN cp AdventureWorks2017.bak /var/opt/mssql/backup/

# Change back to the mssql user to restore the database
USER mssql

# Launch SQL Server, confirm startup is complete, restore the database, then terminate SQL Server.
RUN ( /opt/mssql/bin/sqlservr & ) | grep -q "Service Broker manager has started" \
    && /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P ${SA_PASSWORD} -Q 'RESTORE DATABASE AdventureWorks2017 FROM DISK = "/var/opt/mssql/backup/AdventureWorks2017.bak" WITH MOVE "AdventureWorks2017" to "/var/opt/mssql/data/AdventureWorks2017.mdf", MOVE "AdventureWorks2017_Log" to "/var/opt/mssql/data/AdventureWorks2017_log.ldf", NOUNLOAD, STATS = 5' \
    && pkill sqlservr

CMD ["/opt/mssql/bin/sqlservr"]