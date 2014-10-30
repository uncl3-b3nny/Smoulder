class Suggestion < ActiveRecord::Base
  
  has_many :user_suggestions
  has_many :users, through: :user_suggestions

#To Do: restructure data queries using the join table
# all of this logic needs to use the join table objects, and consequently the join table objects will need to store any data that is updated by the user, so that the suggestions can be 100% re-usable. 
#To Do: assign default events via join table

  def next_category 
    @suggestions = Suggestion.all
    
    @quality_time_array = []
    @words_of_affirmation_array = []
    @physical_touch_array = []
    @acts_of_service_array = []
    @tangible_gifts_array = []

    @suggestions.each do |x|
      if x.primary_category == "Quality Time" && x.workflow_state == "done"
        @quality_time_array.unshift(x)
      elsif x.primary_category == "Words of affirmation" && x.workflow_state == "done"
        @words_of_affirmation_array.unshift(x)
      elsif x.primary_category == "Physical Touch" && x.workflow_state == "done"
        @physical_touch_array.unshift(x)
      elsif x.primary_category == "Acts of Service" && x.workflow_state == "done"
        @acts_of_service_array.unshift(x)
      elsif x.primary_category == "Tangible Gifts" && x.workflow_state == "done"
        @tangible_gifts_array.unshift(x)
      end
      #bubble sort the arrays by length. Select the smallest. 1st tiebreaker by data, 2nd tiebreaker alphabetical order
    @quality_time_array.length = a
    @words_of_affirmation_array.length = b 
    @physical_touch_array.length = c
    @acts_of_service_array.length = d 
    @tangible_gifts_array.length = e

      @category_length_array = [a,b,c,d,e]
      @category_length_array.sort.first = f
      if f == a  
        @quality_time_array.first = @next_category
        @quality_time_array.first.workflow_state = "not_done"
      elsif f == b
        @words_of_affirmation_array.first = @next_category
        @words_of_affirmation_array.first.workflow_state = "not_done"
      elsif f == c
        @physical_touch_array.first = @next_category
        @physical_touch_array.first.workflow_state = "not_done"
      elsif f == d
        @acts_of_service_array.first = @next_category
        @acts_of_service_array.first.workflow_state = "not_done"
      elsif f == e
        @tangible_gifts_array.first = @next_category
        @tangible_gifts_array.first.workflow_state = "not_done"
      end
    @next_category
  end

  def next_category_array
    @suggestions = Suggestion.all
    @next_category_array = []
    @suggestions.each do |x|
      if @next_category == x.primary_category && x.workflow_state == "not_done"
        @next_category_array.unshift(x)
      end
    end
    @next_category_array
  end

def next_suggestion(x)
  # display suggestion and change the workflow state to done
  @next_category.title
end

scope :next_suggestion, Proc.new { |user_id, limit = 1| where('category = @next_category AND workflow_state = "not_done" AND user_id = ?', user_id).order("id ASC").limit(limit) }

  scope :next_quality_time, Proc.new { |user_id, limit = 1| where('category = "Quality Time" AND subcategory = "schedule" AND workflow_state = "not_done" AND user_id = ?', user_id).order("id ASC").limit(limit) }

  scope :next_words_of_affirmation, Proc.new { |user_id, limit = 1| where('category = "Words of affirmation" AND subcategory = "poetry" AND workflow_state = "not_done" AND user_id = ?', user_id).order("id ASC").limit(limit) }

  scope :next_acts_of_service, Proc.new { |user_id, limit = 1| where('category = "Acts of Service" AND workflow_state = "not_done" AND user_id = ?', user_id).order("id ASC").limit(limit) }

  scope :next_physical_touch, Proc.new { |user_id, limit = 1| where('category = "Physical Touch" AND workflow_state = "not_done" AND user_id = ?', user_id).order("id ASC").limit(limit) }

  scope :next_tangible_gift, Proc.new { |user_id, limit = 1| where('category = "Tangible Gifts" AND workflow_state = "not_done" AND user_id = ?', user_id).order("id ASC").limit(limit) }

end

