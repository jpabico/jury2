#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

IJURY::Application.load_tasks

namespace :f do
    desc "A poem"
    task :frost => :environment do
      puts "Two roads diverged in a yellow wood"
      puts "And I, I took the one less traveled by"
      puts "And that has made all the difference."
    end
  end

  namespace :events do
    desc "Just testing"
    task :fetch => :environment do
      puts "From the Rakefile...HERE IS THE TIME --- #{Time.now} - Success!"
    end
  end
