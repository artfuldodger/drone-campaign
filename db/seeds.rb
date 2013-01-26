seed_files = ['01_states', '02_representatives']

seed_files.each do |seed_file|
  require "#{Rails.root}/db/seeds/#{seed_file}"
end