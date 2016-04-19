# MariaDB Container for Tredly

Version 1.0.00.0 Apr 19 2016

## Installation

This container requires Tredly to be installed. https://github.com/vuid-com/tredly-build

1. Open `grant.sql`. Change the database name and root user passwords to suit. Default is database name is `tredly_mariadb` and default password is `super_secret_password`
2. Open `Tredlyfile`. Change the database name and password on line 141: `onStart= mysql -uroot --password=super_secret_password tredly_mariadb < /usr/local/install.sql`.
3. Add any SQL to `install.sql` you want to run when the container is created. The database used is specified in `grant.sql` and `Tredlyfile` 

### Changing the default port

The default port is `53306`. Change this in `my.cnf` on lines #2 and #6. This must be done before building the container.

### Changing the container name

By default, the container name is `tredly-mariadb-v1`. Change this by editing the `Tredlyfile` prior to building this container.

## Usage

This container will respond on the port set in `my.cnf` (default is `53306`) with the user `root` and the password you have set (see above). For example, `mysql -uroot -p -h www.xxx.yyy.zzz -P 53306 -D tredly_mariadb`
