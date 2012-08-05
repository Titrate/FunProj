<<note
	These are the gems we know we will need. More can be added later. Again, we want to see the list
note

LOG_FILE="$HOME/gem_install.log"

echo "Installing simple_calendar"
gem install simple_calendar>>$LOG_FILE
echo "...done..."

echo "Installing delayed_job (dj)"
gem install delayed_job>>$LOG_FILE
echo "...done..."

echo "Remeber to add the gems to the project Gemfile and run the command bundle install"
echo "To see all installed gems, run the command gem list --local"
echo "If errors, check the log"