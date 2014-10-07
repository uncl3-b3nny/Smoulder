# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# fake_users = 
  10.times do 
    password = Faker::Internet.password(8)
    User.create([{email: Faker::Internet.email, password: password, password_confirmation: password, anniversary: (Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f)).to_date), spouse_birthday: (Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f)).to_date), first_kiss: (Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f)).to_date), first_date: (Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f)).to_date), day_you_proposed:(Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f)).to_date)}])
  end

fake_mailer_content = 
  20.times do
    MailerContent.create(
      [
        {category: 'Quality Time', subcategory: 'memories', actual_context: 'remember that really romantic evening we had...'},
        {category: 'Quality Time', subcategory: 'schedule', actual_context: 'this is a suggestion for a fun date!'},
        {category: 'Words of affirmation', subcategory: 'poetry', actual_context: 'This is where we would suggest some poetry!'},
        {category: 'Words of affirmation', subcategory: 'inspiration', actual_context: Faker::Company.bs},
        {category: 'Tangible Gifts', subcategory: Faker::Commerce.department(1, true), actual_context: Faker::Commerce.product_name + ": $" + ((Faker::Commerce.price).to_s)},
        {category: 'Acts of Service', subcategory: 'Domestic', actual_context: 'Fix the ' + Faker::Hacker.noun},
        {category: 'Physical Touch', subcategory: 'Reminder', actual_context: 'Give your wife a hug today!'}, 
        {category: 'Physical Touch', subcategory: 'Ideas', actual_context: 'Holding hands is simple way to remind her you love her!'}])
  end

events = Event.create(
  [
    {title: "Mother's Day", start: '2015-05-10', event_type: 'Holiday'}, {title: "Labor Day", start: '2015-09-07', event_type: 'Holiday'}, {title: "Independence Day", start: '2015-07-04', event_type: 'Holiday'}, {title: "New Year's Day", start: '2014-01-1', event_type: 'Holiday'}, {title: "Black Friday", start: '2014-11-28', event_type: 'Holiday'}, {title: "Thanksgiving", start: '2014-11-27', event_type: 'Holiday'}, {title: "Cyber Monday", start: '2014-12-01', event_type: 'Holiday'}, {title: "Christmas", start: '2014-12-25', event_type: 'Holiday'},{title: "Halloween", start: '2014-10-31', event_type: 'Holiday'}
    ])
#maybe just a write a script to scrape poetry foundation?



















