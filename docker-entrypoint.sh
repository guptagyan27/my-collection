yarn install

bundle check || bundle install --without production

bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed

rm -f /app/tmp/pids/server.pid
bundle exec rails s -p 3000 -b '0.0.0.0'