# Stellar

> Microservice-based application ecosystem framework,
> built using [`Artillery`](https://github.com/abstractive/artillery)
> and [`Quasar`](https://github.com/quasarframework/quasar).

## Setup environment

To prepare for development, on `Ubuntu` hosts, you need these packages:
* `crystal`
* `npm`
* `libzeromq3-dev`
* `libssl-dev`
* `libyaml-dev`

Then with those installed, you need the `quasar` CLI:

```
apt install crystal npm libzmq3-dev libssl-dev libyaml-dev
sudo npm install -g @quasar/cli
```

## Realtime development

To test the interface application:

```
cd interface
quasar dev
```

## Deploying applications

Once ready to ship a release of this Stellar presence:

```
cd interface
quasar build
cd ..
```
