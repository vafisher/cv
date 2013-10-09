# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu1204"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.hostname = 'cv'

  config.ssh.forward_agent = true
  # Uncomment the lines below after running Ansible.
  # config.ssh.username = 'steve'
  # config.ssh.private_key_path = '/Users/steve/.ssh/id_rsa'

end
