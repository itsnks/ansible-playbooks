## Creation of database

- ansible.cfg is configured with path for inventory file and log file
- it also has maximum number of forks set to 5
- become privilege is set to true with using sudo method

`db_create.yaml` uses web1 node as webserver and web2 as dbserver. 

mariadb-server and python3-pymysql are installed, and db and db user are created and `mysqld.sock` is used for communication between the processes

- to run use:
```
ansible-playbook db_create.yaml
```