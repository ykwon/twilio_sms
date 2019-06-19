namespace :notification do
  desc "Sends SMS notification to employee asking them to log overime"
  task sms: :environment do
    #puts " I'm in rake test"
    #1. Schedule to run at Sunday at 5pm.
    #2. Iterate over all employees
    #3. Skip admin users
    #4. Send a link that has instructions and a link to log time 
    # number: "555-555-5555"
    # number: "1234567890"
    # No spaces or dashes
    # exactly 10 charcters
    # all characters have to be a number
   
  end

end
