unless ENV['ENVIRONMENT'] == 'development'
  root       = ENV['APP_ROOT']
  shared_dir = "#{root}/shared"
  app_dir    = "#{root}/app"

  workers 1

  bind       "unix://#{shared_dir}/sockets/analytics.maeven.media-puma.sock"
  pidfile    "#{shared_dir}/pids/puma.pid"
  state_path "#{shared_dir}/pids/puma.state"
  rackup     "#{app_dir}/config.ru"

  threads 1, 6

  activate_control_app 

  # Logging
  stdout_redirect "#{shared_dir}/log/puma.stdout.log", "#{shared_dir}/log/puma.stderr.log", true


  on_worker_boot do
  end
end