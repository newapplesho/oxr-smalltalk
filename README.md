# Open Exchange Rates [![Build Status](https://travis-ci.org/newapplesho/oxr-smalltalk.svg?branch=master)](https://travis-ci.org/newapplesho/oxr-smalltalk)
Pharo Smalltalk wrapper for the [Open Exchange Rates API](https://openexchangerates.org).

## Requirement
  - Pharo 3.0, Pharo 4.0, Pharo 5.0, Pharo 6.0, Pharo 6.1

## Installation

```smalltalk
Metacello new
    baseline: 'OXR';
    repository: 'github://newapplesho/oxr-smalltalk:v0.1/pharo-repository';
    load.
```

## set up

```smalltalk
OXRSettings default applicationId:'Your App ID'.
```

## Usage

You can read official documentation [here](https://oxr.readme.io/docs).

### /latest.json
Get the latest exchange rates available from the Open Exchange Rates API.

```smalltalk
oxr := OpenExchangeRates new.
oxr getLatestExchangeRates.
```

### /currencies.json

Get a JSON list of all currency symbols available from the Open Exchange Rates API, along with their full names, for use in your integration.

```smalltalk
oxr := OpenExchangeRates new.
oxr getCurrencies.
```

### /convert

Convert any money value from one currency to another at the latest API rates using the /convert API endpoint.

```smalltalk
oxr := OpenExchangeRates new.
oxr convert: 19999.95 from: 'GBP' to: 'EUR'.
```

### Changing Base Currency

```smalltalk
oxr := OpenExchangeRates new.
oxr baseCurrency: 'JPY'.
oxr getLatestExchangeRates.
```
