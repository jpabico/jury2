#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

IJURY::Application.load_tasks

namespace :db do
  desc "Checks for active cases, and updates them to closed status."
  task :runupdate => :environment do
    @cases = Case.where(status: 'active')
    @cases.each do |item|
      if Time.now - item.active_start > 3
        Case.update(item.id, status: "closed")
      end
    end
  end
end
