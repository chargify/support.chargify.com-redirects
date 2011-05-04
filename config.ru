require 'rubygems'
require 'redirect'

Redirect.autorun = false

require 'support-chargify-com-redirects.rb'

run Redirect.app
