accessing
convertUrl
	| url |
	url := self baseResourceUrl.
	^ url addPathSegment:'convert'.	