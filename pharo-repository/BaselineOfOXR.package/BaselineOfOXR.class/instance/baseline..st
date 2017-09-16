baselines
baseline: spec 
	 <baseline>
	
	spec for: #common do: [
		spec project: 'JSON' with: [
			spec
				className: 'ConfigurationOfJSON';
				file: 'ConfigurationOfJSON';
				versionString: #stable;
				repository: 'http://smalltalkhub.com/mc/PharoExtras/JSON/main'. ].
		spec 
			package: 'OXR-Core' with: [ spec requires: 'JSON' ].
		spec group: 'default' with: #('OXR-Core')
	].