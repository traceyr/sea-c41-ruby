# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!

puts 'Nana: HI SWEETIE! GIVE NANA A KISS!'
times_bye_was_said = 0

while true
  user_response = gets.chomp

  if user_response == 'BYE' && times_bye_was_said == 2
    puts 'Nana: BYE SWEETIE!'
    break
  elsif user_response == 'BYE'
    puts 'Nana: HOW\'S SCHOOL GOING?'
    times_bye_was_said += 1
  else
    times_bye_was_said = 0
    if user_response != user_response.upcase
      puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
    elsif user_response == user_response.upcase && user_response != 'BYE'
      random_year = 1930 + rand(20)
      puts "Nana: NOT SINCE #{random_year}!"
    end
  end
end
