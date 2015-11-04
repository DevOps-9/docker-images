Foreman toolbox
===============

Toolbox containing the Foreman Hammer CLI: https://github.com/theforeman/hammer-cli

Run it, you'll need to specify the URL of your Foreman host and the user credentials:

```bash
$ docker run --rm -it -e "FOREMAN_URL=https://foreman.domain" -e "USERNAME=myuser" -e "PASSWORD=mypassword" deviantony/toolbox:foreman
```

# Available modules

* Foreman SSH: https://github.com/theforeman/hammer-cli-foreman-ssh
