require 'active_record'
require './db_connect'

class DeliveryConnect < ActiveRecord::Base
  self.table_name = "DeliveryJobDetails"
end

# d = Delivery.create(:id=> 2,:date => Date.today,:do => "test")
# puts %{#{d.inspect} }
