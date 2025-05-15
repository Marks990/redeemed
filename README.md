# scripts
These are testing scripts for automation
 
# Ansible modules 
[List all modules](https://docs.ansible.com/ansible/2.9/modules/list_of_all_modules.html)
Quick viewing ansible-doc <module>

## Create a file on the remote server
ansible all -m file -a 'path=/tmp/test_modules.txt state=touch mode=0600'

## Copy file from remote and store locally
ansible all -m fetch -a 'src=/tmp/test_modules.txt dest=/tmp/'
