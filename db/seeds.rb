# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# fake_users = 
5.times do 
  z = 1
  password = "password14"
  User.create([{email: Faker::Internet.email, password: password, password_confirmation: password, anniversary: (Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f)).to_date), spouse_birthday: (Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f)).to_date), first_kiss: (Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f)).to_date), first_date: (Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f)).to_date), day_you_proposed:(Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f)).to_date)}])
  

  fake_suggestion_content = 
    5.times do
      SuggestionContent.create(
        [
          {category: 'Quality Time', subcategory: 'memories', actual_content: 'remember that really romantic evening we had...', user_id: z, workflow_state: "not_done" },
          {category: 'Quality Time', subcategory: 'schedule', actual_content: 'this is a suggestion for a fun date!', user_id: z, workflow_state: "not_done" },
          {category: 'Words of affirmation', subcategory: 'poetry', actual_content: 'This is where we would suggest some poetry!', user_id: z, workflow_state: "not_done" },
          {category: 'Words of affirmation', subcategory: 'inspiration', actual_content: Faker::Company.bs, user_id: z, workflow_state: "not_done" },
          {category: 'Tangible Gifts', subcategory: Faker::Commerce.department(1, true), actual_content: Faker::Commerce.product_name + ": $" + ((Faker::Commerce.price).to_s), user_id: z, workflow_state: "not_done" },
          {category: 'Acts of Service', subcategory: 'Domestic', actual_content: 'Fix the ' + Faker::Hacker.noun, user_id: z, workflow_state: "not_done" },
          {category: 'Physical Touch', subcategory: 'Reminder', actual_content: 'Give your wife a hug today!', user_id: z, workflow_state: "not_done" }, 
          {category: 'Physical Touch', subcategory: 'Ideas', actual_content: 'Holding hands is simple way to remind her you love her!', user_id: z, workflow_state: "not_done" }])
    end
  z += 1
end

events = Event.create(
  [
    {title: "Mother's Day", start: '2013-05-10', event_type: 'Holiday', workflow_state: "not_done", notes: "Sent her poetry", history_image_file_path: "/assets/other_images/Poetry.png" }, 
    {title: "Labor Day", start: '2013-09-07', event_type: 'Holiday', workflow_state: "not_done", notes: "We went hiking at Nantahala national forest!", history_image_file_path: "/assets/other_images/olive-mountain.png" }, 
    {title: "Independence Day", start: '2015-07-04', event_type: 'Holiday', workflow_state: "not_done" }, 
    {title: "New Year's Day", start: '2014-01-1', event_type: 'Holiday', workflow_state: "not_done" }, 
    {title: "Black Friday", start: '2014-12-28 6:30:00', event_type: 'Holiday', workflow_state: "not_done" }, 
    {title: "Anniversary", start: '2014-11-27 7:30:00', event_type: 'Holiday', workflow_state: "not_done" }, 
    {title: "Cyber Monday", start: '2014-12-01 8:30:00', event_type: 'Holiday', workflow_state: "not_done" }, 
    {title: "Christmas", start: '2013-12-25', event_type: 'Holiday', workflow_state: "not_done", notes: "Bought her chapstick", history_image_file_path: "/assets/other_images/chapstick.png"}
    ])
#maybe just a write a script to scrape poetry foundation?



















