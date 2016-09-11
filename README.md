# Riotjs & Webpack

:warning: ***Work in progress here...***  

[![David](https://img.shields.io/david/dev/LasaleFamine/try-riotjs-webpack.svg)](https://github.com/LasaleFamine/try-riotjs-webpack)

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
