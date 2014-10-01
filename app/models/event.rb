class Event < ActiveRecord::Base
  # needs validation for attributes
belongs_to :user

  # This proc is just like a def method_name... end. It can be called just like a class method, e.g. 
  # Event.next_event
  scope :next_event, Proc.new { |after = DateTime.now, limit = 1| where('start > ?', after).order("start ASC").limit(limit) }

end
