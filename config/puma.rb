root = "/var/www/analytics.maeven.media"

workers 1

bind "unix://#{root}/shared/tmp/sockets/analytics.maeven.media-puma.sock"
pidfile "#{root}/shared/tmp/pids/puma.pid"
state_path "#{root}/shared/tmp/states/puma.state"
rackup "#{root}/config.ru"

threads 1, 6

activate_control_app
