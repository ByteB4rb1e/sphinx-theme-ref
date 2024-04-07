# 🚀 Welcome to your new awesome project!


## Development

### Hot-Reloading

For a more seamless development workflow, it is possible to host the demo
through a built-in web server with hot-reloading enabled. When accessing the
site through a JavaScript-enabled browser, it will automatically reload once
changes made to the source (`src/tiararodneycom_theme`) are detected.

To run the server, execute the following command:

```sh
$ python3 -m pipenv run autobuild-demo
```

Additionally, when working with static content (`src/tiararodneycom_static`),
you may launch a *webpack-dev-server* in parallel for hot-reloading static
files. The *sphinx-autobuilder* will pick up any changes made by
*webpack-dev-middleware* so you can keep on accessing the server hosted through
the `autobuild-demo` command.

To start the `webpack-dev-server`, execute:

```sh
$ npm run autobuild
```
