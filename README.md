# Riotjs & Webpack

:warning: ***Work in progress here...***  

[![devDependencies](https://img.shields.io/david/LasaleFamine/try-riot-webpack.svg)](https://github.com/LasaleFamine/try-riot-webpack)
[![dependencies](https://img.shields.io/david/dev/LasaleFamine/try-riot-webpack.svg)](https://github.com/LasaleFamine/try-riot-webpack)

> Learning repo for [Riotjs](http://riotjs.com) with Webpack forking the example of Riotjs guys.  

**Riotjs** is loaded by the helpful [riotjs-loader](https://github.com/esnunes/riotjs-loader) for **Webpack**.

## Run locally

Download or clone this repo.

Install packages.

```bash
$ npm install
```
And then run the server using `webpack-dev-server` or any possible way you know

```bash
$ npm start
```

- Open [http://localhost:3000/](http://localhost:3000/)
- Open [http://localhost:3000/webpack-dev-server/](http://localhost:3000/webpack-dev-server/) for dev server with hot reloading.

## ES6 using Babel

Of course using ES6 won't let you use the shorthand methods.
So this:

```js
getMessage() { ... }
```

becomes (using ES6):

```js
this.getMessage = () => { ... }
```

## Gotchas  

I'm using:
- [riotgear](https://github.com/LasaleFamine/rg/tree/refactor/blaze2) -> For a bunch of components ready to go (a fork of mine for support BlazeCSS 2)
- [BlazeCSS 2](http://blazecss.com/) -> As dependency of `riotgear`
- [riot.route()](http://riotjs.com/api/route/) -> Internal routing system of `riot`
