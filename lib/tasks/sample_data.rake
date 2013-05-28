namespace :db do
  desc "fill database with projects"

  task populate: :environment do

    # make projects
    p = Project.new()
    p.title = "Could you have survived the titanic?"
    p.title_page_img = "titanic_title.PNG"
    p.content_partial_view_name = "titanic"
    p.save()

    4.times do |n|
      p = Project.new()
      p.title = "project #{n+2}"
      p.title_page_img = "sleepy_bunny.gif"
      p.content_partial_view_name = "project#{n+2}"

      p.save()
    end

    # make comments
    30.times do
      content = Faker::Lorem.sentence(8)
      email = Faker::Internet.email
      name = Faker::name
      Project.all.each { |p| p.comments.create!(name: name, email: email, content: content)}
    end
  end

end