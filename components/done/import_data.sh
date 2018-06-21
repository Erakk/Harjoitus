#!/bin/sh

# Create DB and table schema
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i schema/setup.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i schema/yritys.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i schema/tilikaudet.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i schema/tekijat.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i schema/osastot.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i schema/kuspaikat.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i schema/rekisteri.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i schema/toimipaikat.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i schema/tyopiste.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i schema/dokumentit.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i schema/tthkirjeet.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i schema/icd10.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i schema/sairaus.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i schema/sop_asemat.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i schema/vanhat.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i schema/laakari.sql

# Import data fixtures 
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i data/yritys.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i data/tilikaudet.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i data/tekijat.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i data/osastot.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i data/kuspaikat.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i data/rekisteri.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i data/tyopiste.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i data/dokumentit.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i data/tthkirjeet.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i data/icd10.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i data/sop_asemat.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i data/toimipaikat.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P MightyPassword42 -d master -i data/laakari.sql

