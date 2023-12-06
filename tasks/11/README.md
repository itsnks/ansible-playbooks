## Roles

### Initialize roles
- A role can be initialized using `ansible-galaxy init <role_name>`

To initialize the following command was used:
```
ansible-galaxy init src_files
```

- roles divides the structure into a well definited hierarchy
- yaml files are edited based on their roles

### In this example
- `defauls` contains the varialbes
- `files` contains the files to be used by the copy module
- `tasks` consits of the list of tasks to be performed
- `templates` contains the jinja2 template files
- `handlers` contains all the handler functions

To run use:
```
ansible-playbook main.yaml
```
