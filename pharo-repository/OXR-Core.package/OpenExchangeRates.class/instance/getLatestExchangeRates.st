public
getLatestExchangeRates
	| result |
	result := self get: self latestUrl.
	^ self readJsonFromResponse: result.