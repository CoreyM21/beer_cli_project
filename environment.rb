# connect whole program so file can talk to one another
# require all gems

require 'pry'
require 'net/http'
require 'json'

require_relative './lib/api'
require_relative './lib/beer'
require_relative './lib/cli'

# git add .
# git commit -m "YOUR MESSAGE HERE"
# git push origin master