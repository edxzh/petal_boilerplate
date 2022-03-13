# Petal Boilerplate

Boilerplate for PETAL stack, to save your time on front-end/back-end setup. TailWindCSS and AlpineJS are installed through npm.

* Phoenix 1.6.6
* Elixir 1.13.2
* TailWindCSS 3.0.17
* AlpineJS 3.8.17
* LiveView 0.17.5

## Start your Petal project

```
$ git clone https://github.com/edxzh/petal_boilerplate.git
$ ./rename.sh ${new_name} ${new_opt_name}
$ rm ./rename.sh
```

## Start your Phoenix server
```
$ mix deps.get
$ cd assets && npm install
$ mix phx.server
```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
