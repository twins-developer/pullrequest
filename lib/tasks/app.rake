namespace :app do
  namespace :dev do
    task reset: %i( pg:reset db:drop db:create db:migrate db:seed app:dev:sample )

    task sample: :environment do
      FactoryGirl.create_list(:company, 2, :with_projects)
      FactoryGirl.create_list(:engineer, 2)
      FactoryGirl.create_list(:staff, 2)
    end
  end
end
