
import App from './app'
import Site from './views/Site'
import Guide from './data/guide'
import LanguageCode from './util/languages'

# Setting up the express server
var express = require 'express'
var srv = express()

var highlighter = require './util/highlighter'

srv.disable('etag')
srv.use(express.static('./www'))

# srv.get '/' do |req,res| res.redirect('/home')
# srv.get '/install' do |req,res| res.redirect('/guide#toc-installation')

# creating the local app
APP = App.new

# rendering markdown
srv.get(/^([^\.]+\.(md|json|imba))$/) do |req,res|
	var result = await APP.fetch(req:path)
	res.send JSON.stringify(result)

# Load language specific guide
srv.get ('/guide-source') do |req,res|
	const lang = LanguageCode(req:query:lang)
	let guide = Guide.get lang
	res.send JSON.stringify(guide)


# catch-all rendering for the whole site
# routing etc is handled by the <site> tag itself
srv.get(/^([^\.]*)$/) do |req,res|
	const lang = LanguageCode(req:query:lang)
	let guide = Guide.get lang
	let app = req:app = App.new(guide: guide.docs)
	req:app.req = req

	var html = <html router-url=req:path>
		<head>
			# HTML Meta Tags
			<title> "Imba 👐 Intuitive and powerful language for building web apps that fly"
			<meta name="description" content="Imba is a new programming language for the web that compiles to performant and readable JavaScript. Imba was born to make developing web applications fun again.">
			# Google / Search Engine Tags
			<meta itemprop="name" content="Imba 👐 Intuitive and powerful language for building web apps that fly">
			<meta itemprop="description" content="Imba is a new programming language for the web that compiles to performant and readable JavaScript. Imba was born to make developing web applications fun again.">
			<meta itemprop="image" content="https://www.imba.io/static/Logo.png">
			# Facebook Meta Tags
			<meta property="og:url" content="https://www.imba.io">
			<meta property="og:type" content="website">
			<meta property="og:title" content="Imba 👐 Intuitive and powerful language for building web apps that fly">
			<meta property="og:description" content="Imba is a new programming language for the web that compiles to performant and readable JavaScript. Imba was born to make developing web applications fun again.">
			<meta property="og:image" content="https://www.imba.io/static/Logo.png">
			# Twitter Meta Tags
			<meta name="twitter:card" content="summary_large_image">
			<meta name="twitter:title" content="Imba 👐 Intuitive and powerful language for building web apps that fly">
			<meta name="twitter:description" content="Imba is a new programming language for the web that compiles to performant and readable JavaScript. Imba was born to make developing web applications fun again.">
			<meta name="twitter:image" content="https://www.imba.io/static/Logo.png">
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,minimum-scale=1">
			<meta name="keywords" content="imba">
			<link href='https://fonts.googleapis.com/css?family=Source+Code+Pro:400,500,600' rel='stylesheet' type='text/css'>
			<link rel="stylesheet" href="/dist/main.css" media="screen">
			<style html=highlighter:theme.CSS>
		<body>
			<Site[req:app]>
			<script> "APPCACHE = $$APPCACHE$$"
			<script src="/dist/main.js">
	
	html.router.onReady do
		res.send html.toString.replace("$$APPCACHE$$",JSON.stringify(req:app.serialize))

var port = process:env.PORT or 3011

var server = srv.listen(port) do
	console.log 'server is running on port ' + port
