# Monte Carlo library for Futhark

This library contains useful modules for Monte Carlo simulation

## Installation

```
$ futhark-pkg add github.com/topaztechnology/montecarlo
$ futhark-pkg sync
```

## Modules

### Brownian bridge

#### Usage example

```
module bridge = mk_brownian_bridge f64
let times = [....] -- array of times
let bridge_params = bridge.build times
let variates = [...] -- array of random variates
let path = bridge.transform bridge_params variates
```
