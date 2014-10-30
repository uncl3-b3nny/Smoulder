# Example of how to send a mailer with a rake task

# task send_email: :environment do
#   # if Time.now.wday == 1
#     p '***'
#     @users = User.all
#     @suggestions = Suggestion.all.limit(5)
#     WeeklySuggestions.build_an_email(@users, @suggestions).deliver
#   # end
# end
