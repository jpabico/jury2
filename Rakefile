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
    	remaining_seconds = item.active_end - Time.now
      Case.update(item.id, status: "closed") if remaining_seconds <= 0 && remaining_seconds != nil
    end
  end
end
