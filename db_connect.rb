require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
:adapter => "sqlserver",
:host => "192.168.0.8",

# :host => "192.168.0.91",

)
