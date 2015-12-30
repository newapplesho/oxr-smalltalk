accessing
latestUrl	
	| url |
	url := self baseResourceUrl.
	^ url addPathSegment:'latest.json'.	