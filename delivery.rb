require 'active_record'
require './db_connect'

class Delivery < ActiveRecord::Base
  self.table_name = "delivery"
end

d = Delivery.create(:id=> 2,:date => Date.today,:do => "test")
puts %{#{d.inspect} }
