FROM centurylink/sphinx

RUN yum install -y libaio unixODBC-devel

ADD source/oracle-instantclient12.1-basic-12.1.0.2.0-1.x86_64.rpm /tmp
ADD source/oracle-instantclient12.1-odbc-12.1.0.2.0-1.x86_64.rpm /tmp

RUN rpm -i /tmp/oracle-instantclient12.1-basic-12.1.0.2.0-1.x86_64.rpm && \
    rpm -i /tmp/oracle-instantclient12.1-odbc-12.1.0.2.0-1.x86_64.rpm

ENV LD_LIBRARY_PATH /usr/lib/oracle/12.1/client64/lib/
ENV ORACLE_HOME /usr/lib/oracle/12.1/client64/lib/
