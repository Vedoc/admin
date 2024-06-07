# ! /bin/sh

# If database exists, migrate. Otherwise, create and seed
bundle exec rake db:migrate 2>/dev/null || bundle exec rake db:setup db:seed
echo 'Database migration for admin side and seeding completed!'
