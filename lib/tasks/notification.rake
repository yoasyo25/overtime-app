namespace :notification do
  desc "Sends SMS notifcation to employees asking them to log if they had overtime or not"
  task sms: :environment do
    # Schedule to run at Sunday at 5 pm
    # Iterate over all employees
    # Skip AdminUsers
    # Send a message that has instructions and a link to log time       
  end

end
