# DAM-docker-is-fun

Learning is fun and so is Docker.  Therefore I came up with some scenarios on how one could consume containers but not necessarily always should.  

### DAM stands for:
  - Docker (obviously)
  - Ansible (configuration management)
  - Monit (process management)

### Quick Start Guide
  - Clone repo
  - Run "build.sh"
  - Run "run.sh"

### Base-Images Folder
This folder contains the base CentOS and Ubuntu images configured with a bunch of tools that can come in handy.  Of course if you don't want to use any of these tools, you can easily remove them or add others as you please.  While adding a bunch of extra utilities may not align with container best practices, it sure does help learning about containers be easier.

### Examples Folder
This folder is kind of self-explanatory.  The centos-monit-ansible and ubuntu-monit-ansible are two pretty cool projects that will allow your containers to be provisioned via Ansible, controlled via Monit, run sshd, and as many other processes as you like.
