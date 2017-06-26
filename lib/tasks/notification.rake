namespace :notification do
  desc "Sends SMS notifcation to employees asking them to log if they had overtime or not"
  task sms: :environment do
    if Time.now.sunday?
    end
    # Schedule to run at Sunday at 5 pm
    # Iterate over all employees
    # Skip AdminUsers
    # Send a message that has instructions and a link to log time
  end

  desc "Sends mail notifcations to managers (admin users) each day to inform
        pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
      ManagerMailer.email(admin).deliver_now
    end
    end
  end

end
