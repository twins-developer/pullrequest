namespace :app do
  namespace :dev do
    task reset: %i( db:drop db:create db:migrate db:seed app:dev:sample )
    task heroku: %i( pg_reset )
    task pg_reset: :environment do
      'heroku pg:reset DATABASE_URL --confirm fathomless-sierra-97899'
      'heroku run rails db:migrate'
      'heroku run rails db:seed app:dev:sample'
    end
    task sample: :environment do
      FactoryGirl.create_list(:company, 2, :with_projects)
      FactoryGirl.create_list(:engineer, 2)
      FactoryGirl.create_list(:staff, 2)
    end
  end
end
