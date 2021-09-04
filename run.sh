bundle install --path ../shared/bundle

mkdir -p tmp/puma

bundle exec puma --config config/puma.rb
