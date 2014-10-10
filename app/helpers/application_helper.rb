module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def user_login_links
    if user_signed_in?
      link_to "Log Out", destroy_user_session_path, method: :delete
    else
      link_to "Log In", new_user_session_path
    end
  end

  def love_bank_score
    gifts = 0
    words = 0
    acts_of_service = 0
    touch = 0
    quality_time = 0
    # add a frequency adapter, and a recent_frequency adapter
    # ADD HUMOR!
     
    MailerContent.each do |x|
      if x.category == "Tangible Gifts" && x.workflow_state == "done"
        quality_time += 1
      elsif x.category == "Words of affirmation" && x.workflow_state == "done"
        gifts += 1
      elsif x.category == "Acts of Service" && x.workflow_state == "done"
        gifts += 1
      elsif x.category == "Physical Touch" && x.workflow_state == "done"
        gifts += 1
      elsif x.category == "Quality Time" && x.workflow_state == "done"
        gifts += 1
      end
    end

    @love_bank = [gifts, words, acts_of_seacts_of_service, touch, quality_time]
    @love_bank
  end

  def first_suggestion_category 
    if @love_bank.min == gifts
      "Tangible Gifts"
    elsif @love_bank.min == words
      "Words of affirmation"
    elsif @love_bank.min == acts_of_service
      "Acts of Service"
    elsif @love_bank.min == touch
      "Physical Touch"
    elsif @love_bank.min == quality_time
      "Quality Time"  
    else 
      "Words of affirmation"
    end
  end
# this^ needs a tie breaker
  
  def first_suggestion_object
    if first_suggestion_category == "Words of affirmation"  
      first_button_object = MailerContent.next_words_of_affirmation(current_user.id).first

    elsif first_suggestion_category == "Quality Time"  
      first_button_object = MailerContent.next_quality_time(current_user.id).first

    elsif first_suggestion_category == "Acts of Service"  
      first_button_object = MailerContent.next_acts_of_service(current_user.id).first

    elsif first_suggestion_category == "Physical Touch"  
      first_button_object = MailerContent.next_physical_touch(current_user.id).first 

    elsif first_suggestion_category == "Tangible Gifts"  
      first_button_object = MailerContent.next_tangible_gifts(current_user.id).first
    end
    first_button_object
  end

end
