# class DeliveryItem
#
#   def initialize
#     @items = []
#     @date = ''
#     @do = ''
#     @address = ''
#     @delivery_time = ''
#     @deliver_to = ''
#     @phone = ''
#     @notify_email = ''
#     @notify_url = ''
#     @assign_to = ''
#     @instructions = ''
#     @zone = ''
#   end
#
#   def date
#     return @date
#   end
#
#   def date=(value)
#     @date = value
#   end
#
#   def do
#     return @do
#   end
#
#   def do=(value)
#     @do = value
#   end
#
#   def address
#     return @address
#   end
#
#   def address=(value)
#     @address = value
#   end
#
#   def delivery_time
#     return @delivery_time
#   end
#
#   def delivery_time=(value)
#     @delivery_time = value
#   end
#
#   def deliver_to
#     @deliver_to
#   end
#
#   def deliver_to=(value)
#     @deliver_to = value
#   end
#
#   def phone
#     return @phone
#   end
#
#   def phone=(value)
#     @phone = value
#   end
#
#   def notify_email
#     return @notify_email
#   end
#
#   def notify_email=(value)
#     @notify_email = value
#   end
#
#   def notify_url
#     return @notify_url
#   end
#
#   def notify_url=(value)
#     @notify_url = value
#   end
#
#   def assign_to
#     return @assign_to
#   end
#
#   def assign_to=(value)
#     @assign_to = value
#   end
#
#   def instructions
#     return @instructions
#   end
#
#   def instructions=(value)
#     @instructions = value
#   end
#
#   def zone
#     return @zone
#   end
#
#   def zone=(value)
#     @zone = value
#   end
#
#   def items
#     return @items
#   end
#
#   def items=(value)
#     @items = value
#   end
#
#   def to_json
#     {
#         'do' => @do,
#         'date' => @date,
#         'address' => @address,
#         'delivery_time' => @delivery_time,
#         'delivery_to' => @deliver_to,
#         'notify_url' => @notify_url,
#         'notify_email' => @notify_email,
#         'phone' => @phone,
#         'assign_to' => @assign_to,
#         'instructions' => @instructions,
#         'zone' => @zone,
#         'items' => @items.map { |i| {:sku => i.sku, :desc => i.desc, :qty => i.qty.to_i} }
#     }.to_json
#   end
# end

require 'active_record'
require './db_connect'


class DeliveryItem < ActiveRecord::Base
  self.table_name = "DeliveryJobDetails"

  alias_attribute :do, :"DO Number"
  alias_attribute :date, :"Created Time"
  alias_attribute :address, :"DO Address"
  alias_attribute :delivery_time, :"Delivery Time"
  alias_attribute :deliver_to, :"DO Customer Name"
  alias_attribute :status, :"Status"
  alias_attribute :zone, :"DO Location"
  alias_attribute :note, :"Note"
end
