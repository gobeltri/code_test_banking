namespace :db do
  namespace :seed do
  	Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].each do |f|
  	  task_name = File.basename(f, '.rb').intern
  	  task task_name => :environment do
  	  	load(f) if File.exist?(f)
  	  end
  	end
  end
end

