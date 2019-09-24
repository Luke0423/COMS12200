# A Vagrant-based VM for [COMS12200](https://www.bris.ac.uk/unit-programme-catalogue/UnitDetails.jsa?unitCode=COMS12200)

<!--- -------------------------------------------------------------------- --->

- Install various pre-requisites, i.e.,

  - [VirtualBox](https://www.virtualbox.org)
    (including any extension packs necessary, e.g., for USB device support)
    and
  - [Vagrant](https://www.vagrantup.com).

- Launch the VM using *either* of the following approaches:

  1. Self-provisioned:

     - execute

       ```sh
       git clone https://www.github.com/danpage/COMS12200.git ./COMS12200
       cd ./COMS12200/vagrant
       ```

       to 
       download
       a `Vagrantfile` 
       that references a
       bare [Ubuntu](https://app.vagrantup.com/ubuntu/boxes/bionic64)
       base box,

     - [edit](https://www.vagrantup.com/docs/vagrantfile) 
       the resulting `Vagrantfile` to suit any specific requirements,

     - execute 

       ```sh
       vagrant up
       ```

       after which the VM boots, and the provisioning step executes:
       this may take some time.

  2. Pre-provisioned:

     - execute

       ```sh
       mkdir --parents ./COMS12200/vagrant
       cd ./COMS12200/vagrant
       vagrant init danpage/COMS12200
       ```

       to 
       generate
       a `Vagrantfile`
       that references a
       [pre-provisioned](https://app.vagrantup.com/danpage/boxes/COMS12200)
       base box,

     - [edit](https://www.vagrantup.com/docs/vagrantfile) 
       the resulting `Vagrantfile` to suit any specific requirements,
       e.g., enable X11 forwarding by adding the lines

       ```
       config.ssh.forward_agent = true
       config.ssh.forward_x11   = true
       ```

     - execute

       ```sh
       vagrant up
       ```

       after which the VM boots:
       this may take some time.

- Access the VM 
  by executing

  ```sh
  vagrant ssh
  ```

  Note that relevant teaching material will have been *pre-downloaded* 
  into
  `/home/vagrant/COMS12200`
  during the provisioning step.

<!--- -------------------------------------------------------------------- --->
