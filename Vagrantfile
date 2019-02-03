Vagrant.configure("2") do |config|

    config.vm.define "archlinux" do |archlinux|
        archlinux.vm.box = "terrywang/archlinux"
        archlinux.ssh.insert_key = false
        archlinux.vm.provision "ansible" do |ansible|
            ansible.config_file = "./ansible.cfg"
            ansible.verbose = "v"
            ansible.playbook = "./packages.yml"
        end
    end

end
