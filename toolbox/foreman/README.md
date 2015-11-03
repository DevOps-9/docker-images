Foreman toolbox
===============

Toolbox containing the Foreman Hammer CLI: https://github.com/theforeman/hammer-cli

Usage:

Run the container and update the Foreman module configuration in */etc/hammer/cli.modules.d/foreman.yml*:

````
$ docker run -it deviantony/toolbox:foreman zsh
````

Commit the new state of the container (replace CONTAINER_ID with the ID of the updated container):

````
$ docker commit CONTAINER_ID deviantony/toolbox:my-foreman
````

Run the updated container and have fun (you can mount a volume to your .ssh in order to use your private key with `hammer host ssh`):

````
$ docker run --rm -it -v ~/.ssh:/ssh deviantony/toolbox:my-foreman
% hammer host ssh --command "ls /tmp" --user myUser --identity_file /ssh/id_rsa --search "hostgroup_fullname = myHostgroup"
````

# Available modules

* Foreman SSH: https://github.com/theforeman/hammer-cli-foreman-ssh
