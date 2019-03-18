# frozen_string_literal: true

desc "Runs the demo web app (see :run)"
task default: %w[run]

desc "Run demo web app (is the website against which the examples run)"
task :run do
  if Gem::Specification.find_all_by_name("rerun").any?
    sh %( rerun --ignore 'features/' demo_app/app.rb )
  else
    sh %( bundle exec ruby demo_app/app.rb )
  end
end

desc "Delete all Capybara saved pages in the tmp directory"
task :clean do
  File.delete(*Dir.glob("tmp/capybara-*.html"))
end
