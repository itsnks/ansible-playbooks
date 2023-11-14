## Usage

to install apache2 on web1 node using ansible use

```
ansible -i inventory -m apt -a "name=apache2 state=present" web1 --become
```

to start the apache2 service use

```
ansible -i inventory -m service -a "name=apahce2 state=started" web1 --become
```

can reload using `state=reloaded` 

to copy the webpage use

```
ansible -i inventory -m copy -a "src=index.html dest=/var/www/html/index.html" web1 --become
```