# Ansible with AWS EC2

## Setup
  - `sudo apt-get install python awscli ansible`
  - `sudo pip install boto boto3`
  
## Configure aws cli
`aws configure`

## Configure Ansible
  - Create a file named `ansible.cfg` in `/etc/ansible`
  - Set the global attributes `remote_user` and `private_key_file`

## Configure EC2 Dynamic Inventory
  - Create dir `/etc/ansible/hosts`
  - Place `ec2.py` and `ec2.ini` in `/etc/ansible`
  - Configure the `boto_profile` attribute in `ec2.ini` to use the the profile set in `~/.aws/credentials`
  
## Test
  - `ansible all -m ping`

## Setup Playbooks
  - Install and configure Ansible Playbooks, see examples
  - https://github.com/ansible/ansible-examples

## References
http://docs.ansible.com/ansible/latest/intro_getting_started.html
http://docs.ansible.com/ansible/latest/intro_dynamic_inventory.html#example-aws-ec2-external-inventory-script
http://docs.pythonboto.org/en/latest/boto_config_tut.html
http://docs.ansible.com/ansible/latest/intro_configuration.html
