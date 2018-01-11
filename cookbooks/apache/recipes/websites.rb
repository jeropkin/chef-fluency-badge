file 'default www' do
	path '/var/www/html/index.html'
	content 'Hey now version v2.0'
end

webnodes = search('node', 'role:web')

