stage { 'prepare': 
	before => Stage['main'] 
}

class {
	'bootstrap':      stage => prepare;
	'tools':          stage => main;
	'php':            stage => main;
	'nginx':          stage => main;
	'mysql':          stage => main;
	'composer':       stage => main;
}

addServer {'nginx':
	site => 'nginx.dev',
	root => '/vagrant/www/'
}