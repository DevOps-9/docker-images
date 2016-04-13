Nginx React image
=================

[![](https://badge.imagelayers.io/deviantony/nginx:react.svg)](https://imagelayers.io/?images=deviantony/nginx:react 'Get your own badge on imagelayers.io')

An image shipping Nginx with a configuration adapted for a React application.

Should be used in a development environment, it requires a bind to a container named 'container-api'.

Run it:

```bash
$ docker run --rm --volumes-from container-build-app --link container-api -p 80:80 deviantony/nginx:react
```
