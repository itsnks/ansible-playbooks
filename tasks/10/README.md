## Using template and handlers

- copy module is used to copy new content to banner file in the nodes
- lineinfile module is used to make use of a regex to replace contents inside sshd_config for adding the ssh banner path to display banner message
- template is used to copy ntp configurations in the jinja2 files to the required conf file
- handlers are used to notify and execute restart of service only when changes are detected in configs
- group vars contains the ntp addresses and the variables
- template file uses those variables to specify the network addresses

- to run use
```
ansible-playbook provision.yaml
```

