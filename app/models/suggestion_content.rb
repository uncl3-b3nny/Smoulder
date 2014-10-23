class SuggestionContent < ActiveRecord::Base
  scope :next_quality_time, Proc.new { |user_id, limit = 1| where('category = "Quality Time" AND subcategory = "schedule" AND workflow_state = "not_done" AND user_id = ?', user_id).order("id ASC").limit(limit) }

  scope :next_words_of_affirmation, Proc.new { |user_id, limit = 1| where('category = "Words of affirmation" AND subcategory = "poetry" AND workflow_state = "not_done" AND user_id = ?', user_id).order("id ASC").limit(limit) }

  scope :next_acts_of_service, Proc.new { |user_id, limit = 1| where('category = "Acts of Service" AND workflow_state = "not_done" AND user_id = ?', user_id).order("id ASC").limit(limit) }

  scope :next_physical_touch, Proc.new { |user_id, limit = 1| where('category = "Physical Touch" AND workflow_state = "not_done" AND user_id = ?', user_id).order("id ASC").limit(limit) }

  scope :next_tangible_gift, Proc.new { |user_id, limit = 1| where('category = "Tangible Gifts" AND workflow_state = "not_done" AND user_id = ?', user_id).order("id ASC").limit(limit) }
  # def self.next_words_of_affirmation(why_dont_you_work)
  #   self.where(:category == "Words of affirmation" && :subcategory == "poetry" && :workflow_state == "not_done").first
  # end
  # You CANNOT chain class methods on Active Record relations.
end

