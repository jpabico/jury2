set :environment, "development"
set :output, {:error => "log/cron_error_log.log", :standard => "log/cron_log.log"}

every 1.minute do
  rake "events:fetch"
end

every 1.minute do
  rake "cron"
end

every 1.minute do
  rake "f:frost"
end
