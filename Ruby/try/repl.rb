def repl
  n = 0

  while true
    begin
      print "ruby:#{n}> "
      input = gets
      raise Interrupt if input.nil?

      prompt = input.chomp
      break if prompt == 'exit'

      puts "=> #{eval(prompt)}"
    rescue Interrupt
      puts "\n終了"
      break
    rescue Exception
      puts "Error: #{$!}"
    end

    if n%3==0
      p 'え？'
    elsif n == 40 || n == 50
      puts "お？"
    end
    n+=1
  end
end

repl
