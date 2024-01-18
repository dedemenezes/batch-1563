# METHOD
# def capitalize_name(full_name)
#   return
# end

# BLOCK
# do |full_name|

# end


# HOW THIS WORK?
# When we define the method nothing is executed.
# It only runs the method when we call the method (line 45)

# When the method is called, it will execute the code inside the method
# It will print "1. We are inside the method #timer"
# It will define the start time
# Then it goes to the next line and reaches the YIELD
# It will then run the code inside the block.
# Wil print "2. We are inside the block"
# It will sleep for two seconds (simulating some task)
# It will print "3. We are leaving the block"
# then it will be back to the method on the line after the yield
# It will calculate the elapsed timer
# the method will print the elapsed time
# METHOD END



def timer
  puts "1. We are inside the method #timer"
  start_time = Time.now
  # CALL THE BLOCK AND EXECUTE
  yield

  puts "4. We are BACK inside the method #timer"

  end_time = Time.now

  elapsed_time = end_time - start_time
  puts "Took #{elapsed_time} seconds"
end

timer do
  puts "2. We are inside the block"

  # Simulate making coffee
  sleep(2)
  puts "3. We are leaving the block"

end
