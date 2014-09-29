class Event < ActiveRecord::Base
  # needs validation for attributes

# Find Next event

  scope :next_event, Proc.new { |after = DateTime.now, limit = 1| where('start > ?', after).order("start ASC").limit(limit) }

end
