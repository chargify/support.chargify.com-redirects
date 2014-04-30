require 'rubygems'
require 'redirect'

Redirect.autorun = false

require './support-chargify-com-redirects.rb'
require './default_response'

use Rack::Static, :urls => ["/stylesheets", "/images", "/favicon.ico"], :root => "public"
run DefaultResponse.new
