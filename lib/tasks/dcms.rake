namespace :db do
  desc 'drop, create, migrate, seed the db, restart rails'
  task dcms: :environment do
    puts 'dropping db....'
    Rake::Task['db:drop'].invoke
    
    puts 'creating db....'
    Rake::Task['db:create'].invoke
    
    puts 'running migrations ....'
    Rake::Task['db:migrate'].invoke
    
    puts 'loading data from yaml_db ....'
    Rake::Task['db:data:load'].invoke
    
    puts 'starting rails server ....'
    exec('rails s')    
  end
end

