versions
version01: spec 
	<version: '0.1' imports: #('0.1-baseline') >
	
	spec for: #common do: [
		spec project: 'JSON' with: #stable.
		spec
			baseline: 'OXR' with: [ spec repository:'github://newapplesho/oxr-smalltalk:v0.1/pharo-repository' ];
		import: 'OXR'
	]