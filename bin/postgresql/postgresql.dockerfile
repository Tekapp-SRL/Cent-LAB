# Adventure Works Database on PostgreSQL
FROM postgres:latest

ENV POSTGRES_PASSWORD=Tekapp2021!

# Change to root user to run wget and move the file
USER root

RUN wget -progress=bar:force -q -O AdventureWorks.zip https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks-oltp-install-script.zip\
   && mkdir /var/opt/mssql/backup \
   && mv AdventureWorks2019.bak /var/opt/mssql/backup/

# Change back to the mssql user to restore the database
USER mssql

# Launch SQL Server, confirm startup is complete, restore the database, then terminate SQL Server.
RUN ( /opt/mssql/bin/sqlservr & ) | grep -q "Service Broker manager has started" \
    && /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P ${SA_PASSWORD} -Q 'RESTORE DATABASE AdventureWorks2019 FROM DISK = "/var/opt/mssql/backup/AdventureWorks2019.bak" WITH MOVE "AdventureWorks2017" to "/var/opt/mssql/data/AdventureWorks2019.mdf", MOVE "AdventureWorks2017_Log" to "/var/opt/mssql/data/AdventureWorks2019_log.ldf", NOUNLOAD, STATS = 5' \
    && pkill sqlservr

CMD ["/opt/mssql/bin/sqlservr"]