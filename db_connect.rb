require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
:adapter => "sqlserver",
:host => "192.168.0.8",
# :host => "202.83.105.214",
# :host => "192.168.0.91",
:database => "BASES",
:username => "1stbase",
:password => "trishcl"
)
