Foreman toolbox
===============

Toolbox containing the Foreman Hammer CLI: https://github.com/theforeman/hammer-cli

Run it, you'll need to specify the URL of your Foreman host and the user credentials:

```bash
$ docker run --rm -it -e "FOREMAN_URL=https://foreman.domain" -e "USERNAME=myuser" -e "PASSWORD=mypassword" deviantony/toolbox:foreman
```

SSH plugin
----------

You can mount a volume to your .ssh folder in order to use your private key with `hammer host ssh`:

```bash
$ docker run --rm -it -v ~/.ssh:/ssh -e "FOREMAN_URL=https://foreman.domain" -e "USERNAME=myuser" -e "PASSWORD=mypassword" deviantony/toolbox:foreman
```

And then use it in the hammer command line:

```bash
% hammer host ssh --command "ls /tmp" --user myUser --identity_file /ssh/id_rsa --search "hostgroup_fullname = myHostgroup"
```

# Available modules

* Foreman SSH: https://github.com/theforeman/hammer-cli-foreman-ssh
