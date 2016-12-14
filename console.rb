require 'pry'
require 'active_record'
require 'ffaker'

## Connect to the database
require_relative 'db/connection'

# Load models
require_relative 'models/pokemon'
require_relative 'models/trainers'

binding.pry

puts "this line fixes binding.pry bug"
