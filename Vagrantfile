# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise64"

  config.vm.define "dev_ansible" do |ans|
    ans.vm.hostname = "dev.ansible"
    ans.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
    end
  end

  config.vm.define "dev_puppet" do |ppt|
    ppt.vm.hostname = "dev.puppet"
    ppt.vm.provision "puppet" do |puppet|
      puppet.module_path = "puppet/modules"
      puppet.manifests_path = "puppet"
      puppet.manifest_file = "manifests/nodes/dev.pp"
    end
  end

end
