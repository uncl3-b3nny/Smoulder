class WeeklySuggestions < ActionMailer::Base
  default from: "bjlinville1@gmail.com"

  def build_an_email(users, mailer_contents)
    @users = users
    @mailer_contents = mailer_contents
    mail(to:@users.map(&:email), subject:'Fuel to the fire')
  end

end
