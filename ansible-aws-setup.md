# Ansible with AWS EC2

## Ansible Description
Ansible use a declarative model, calculating and executing the actions required to reach a specified final state. Furthermore, they achieve a form of idempotence by checking the current state before they begin, and if the current state matches the specified final state, doing nothing. Ansible can also be used to execute various commands/tasks on the hosts in your inventory.

## Playbooks Description
Playbooks are Ansible’s configuration, deployment, and orchestration language. They can describe a policy you want your remote systems to enforce, or a set of steps in a general IT process. If Ansible modules are the tools in your workshop, playbooks are your instruction manuals, and your inventory of hosts are your raw material.

## EC2 Dynamic Host Description
When the Ansible is interacting with a specific server, the EC2 inventory script is called again with the --host HOST option. This looks up the HOST in the index cache to get the instance ID, and then makes an API call to AWS to get information about that specific instance. It then makes information about that instance available as variables to your playbooks. Each variable is prefixed by ec2_.

## AWS Profiles
**Important** The AWS credentials file uses a different naming format than the CLI config file for named profiles. Do not include the `profile` prefix when configuring a named profile in the AWS credentials file.

## Setup
  - `sudo apt-get install python ansible`
  - `sudo pip install boto boto3 awscli`
  
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
  - http://docs.ansible.com/ansible/latest/intro_getting_started.html
  - http://docs.ansible.com/ansible/latest/intro_dynamic_inventory.html#example-aws-ec2-external-inventory-script
  - http://docs.pythonboto.org/en/latest/boto_config_tut.html
  - http://docs.ansible.com/ansible/latest/intro_configuration.html
  - http://docs.ansible.com/ansible/latest/guide_aws.htmlhttp://docs.aws.amazon.com/cli/latest/userguide/cli-multiple-profiles.html
