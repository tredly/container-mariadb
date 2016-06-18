# MariaDB Container for Tredly

Version 1.0.2 June 18 2016

## Installation

Requires Tredly 1.0.0-rc.1 <https://github.com/tredly/tredly> or later

1. Open `grant.sql`. Change the database name and root user passwords to suit. Default is database name is `container_mariadb` and default password is `super_secret_password`
2. Open `Tredlyfile`. Change the database name and password on line 141: `onStart= mysql -uroot --password=super_secret_password container_mariadb < /usr/local/install.sql`.
3. Add any SQL to `install.sql` you want to run when the container is created. The database used is specified in `grant.sql` and `Tredlyfile`

### Changing the default port

The default port is `3306`. Change this in `my.cnf` on lines #2 and #6 and update `tcpInPort` in the `Tredlyfile`. **Note: This must be done before building the container.**

### Changing the container name

By default, the container name is `container-mariadb`. Change this by editing `containerName` in the `Tredlyfile` prior to building this container.

## Usage

This container will respond on the port set in `my.cnf` (default is `3306`) with the user `root` and the password you have set (see above). For example, `mysql -uroot -p -h www.xxx.yyy.zzz -P 3306 -D container_mariadb`
