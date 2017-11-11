namespace :app do
  namespace :dev do
    task reset: %i( db:drop db:create db:migrate db:seed app:dev:sample )
    task sample: :environment do
      FactoryGirl.create_list(:company, 2, :with_resource_frame_works, :with_resource_skills, :with_resource_tools)
      FactoryGirl.create_list(:engineer, 2, :with_resource_frame_works, :with_resource_skills, :with_resource_tools)
      FactoryGirl.create_list(:staff, 2)
    end
  end
end
