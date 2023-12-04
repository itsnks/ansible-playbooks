## Using conditionals

- uses `when` to apply a condition to execute a specific task
- in this example in the yaml file `when` is used to specify installation of **APACHE2** on **Ubuntu** distribion and **NGINX** on **CentOS** distribution
- inventory file is configured with web3 node which is added to centossrvgrp

- to run use
```
ansible-playbook provision.yaml
```

