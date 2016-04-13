Nginx React image
=================

[![](https://badge.imagelayers.io/deviantony/nginx:react.svg)](https://imagelayers.io/?images=deviantony/nginx:react 'Get your own badge on imagelayers.io')

An image shipping Nginx with a configuration adapted for a React application.

Run it:

```bash
$ docker run --rm --volumes-from container-build-app --link "container-api:api" -p 80:80 deviantony/nginx:react
```
