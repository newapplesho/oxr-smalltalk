accessing
currenciesUrl
	| url |
	url := self baseResourceUrl.
	^ url addPathSegment:'currencies.json'.	