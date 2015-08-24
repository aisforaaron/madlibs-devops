# madlibs-devops
Provisioning files for madlibs Django app.
Used for setting up a local dev environment.

## Install

Clone both repos in a subdir like so

    /madlibs-project
        /madlibs
        /madlibs-devops

Install all dependencies

  - Ansible, http://ansible.com
  - Heroku, http://heroku.com
  - Virtualbox, http://virtualbox.org
  - Vagrant, http://vagrantup.com 
  - Base box ubuntu/trusty64 from https://atlas.hashicorp.com/search

cd into madlibs-devops and run

    $ vagrant up

after VM is finished, ssh in and run script

    $ cd madlibs-devops
    $ vagrant ssh
    $ cd /vagrant_data/madlibs-devops
    $ source localsetup.sh

*This will prompt you to create an admin user, then start the local server.

View site in a web browser (while server is running in terminal)
    http://192.168.33.53:8000

To stop server, enter Control+C in Terminal
To stop vagrant, type exit, then vagrant halt
To remove VM completely, vagrant destroy