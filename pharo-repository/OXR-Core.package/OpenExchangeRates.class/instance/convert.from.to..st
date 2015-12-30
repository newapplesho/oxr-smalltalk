public
convert: value from: fromCurrency to: toCurrency
	"https://oxr.readme.io/docs/convert"
	| url result |
	url := self convertUrl.
	url addPathSegment: value asString;
		addPathSegment: fromCurrency;
		addPathSegment: toCurrency.
	result := self get: url.
	^ self readJsonFromResponse: result.