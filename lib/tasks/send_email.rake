# Example of how to send a mailer with a rake task

# task send_email: :environment do
#   # if Time.now.wday == 1
#     p '***'
#     @users = User.all
#     @suggestion_contents = SuggestionContent.all.limit(5)
#     WeeklySuggestions.build_an_email(@users, @suggestion_contents).deliver
#   # end
# end
