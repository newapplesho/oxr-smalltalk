accessing
baseResourceUrl
	| url |
	url := ZnUrl new
		scheme: #https;
		host: 'openexchangerates.org';
		addPathSegment: 'api';
		queryAt: 'app_id' put: OXRSettings default applicationId;
		yourself.
	self baseCurrency ifNotNil: [ url queryAt: 'base' put: self baseCurrency ].
	^ url