require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
:adapter => "sqlserver",
:host => "192.168.0.8\sqlexpress",
:database => "BASESAp"
:username => "1stbase"
:password => "trishcl"
)
