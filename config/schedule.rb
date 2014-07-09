set :environment, "development"
set :output, {:error => "log/cron_error_log.log", :standard => "log/cron_log.log"}


every 1.minute do
  rake "cronlog"
end

every 1.minute do
  rake "db:runupdate"
end
