public
getCurrencies
	| result |
	result := self get: self currenciesUrl.
	^ self readJsonFromResponse: result.