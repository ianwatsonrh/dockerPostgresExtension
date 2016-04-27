psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER payroll;
    CREATE DATABASE payroll;
    GRANT ALL PRIVILEGES ON DATABASE payroll TO payroll;
EOSQL

psql -v ON_ERROR_STOP-1 -d payroll -U payroll -a -f /sqlscripts/Customer.sql
    
