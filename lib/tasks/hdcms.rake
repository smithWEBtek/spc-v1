namespace :db do
  desc 'heroku pg:reset, migrate, seed'
  task hdcms: :environment do
    exec('heroku pg:reset --app spc-v1 --confirm spc-v1
      heroku run rake db:migrate --app spc-v1
      heroku run rake db:data:load --app spc-v1
			heroku restart --app spc-v1')
  end
end
