# Use official SQL Server 2022 image
FROM mcr.microsoft.com/mssql/server:2022-latest

# Accept EULA and set SA password
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Temp..123
ENV MSSQL_PID=Express

# Expose SQL Server default port
EXPOSE 1433

# Start SQL Server
USER root
CMD ["/opt/mssql/bin/sqlservr"]

