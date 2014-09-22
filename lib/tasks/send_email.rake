task send_email: :environment do
  # if Time.now.wday == 1
    p '***'
    @users = User.all
    @mailer_contents = MailerContent.all.limit(5)
    WeeklySuggestions.build_an_email(@users, @mailer_contents).deliver
  # end
end
