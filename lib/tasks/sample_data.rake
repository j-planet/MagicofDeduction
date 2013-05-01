namespace :db do
  desc "fill database with projects"

  task populate: :environment do
    5.times do |n|
      Project.create!(title:"project #{n+1}",
                      title_page_img:"sleepy_bunny.gif",
                      content_partial_view_name: "project#{n+1}")

    end

  end

end