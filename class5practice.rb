# content = File.read('class5practice.txt')
# puts content


File.open('class5practice.txt', 'a') do |file|
  file.write('coding is fun')
end
