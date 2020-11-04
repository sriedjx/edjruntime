Install ansible
sudo apt-add-repository -r ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible -y

Then
clone the edjruntime repo
ansible-playbook role.yaml
