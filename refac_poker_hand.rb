def poker_hand(s1='',s2='',s3='',s4='',s5='')
  input, dup, output = s1+s2+s3+s4+s5, [], ""
  puts "\ninput: #{input}"
  unless (s1 || s2 || s3 || s4 || s5) != ''
    output += "--"
  else
    list = [s1,s2,s3,s4,s5]
    ranks = list.map {|s| s[1..s.size]}                   
    dup = ranks.select {|rank| ranks.count(rank) > 1}
    case dup.size
    when 0   
      output += "5 separate cards"
    when 2   
      output += "1P"
    when 5   
      output +=  "FH"
    when 3   
      output += "3C"
    when 4   
      if dup.uniq.size < 2
        output += "4C"
      else
        output += "2P"
      end
    else
      output += "Something went wrong!"
    end
  end
  puts "poker hand output is: #{output}"
  output
end

poker_hand
poker_hand('DA','CA', 'HA', 'SA', 'CJ')
poker_hand('DA','CA', 'HA', 'D10', 'C10')
poker_hand('D3','CA', 'HA', 'D10', 'SA')
poker_hand('D3','CA', 'HA', 'D10', 'C10')
poker_hand('D3','CA', 'HA', 'D10', 'CJ')
poker_hand('D3','CA', 'H9', 'D10', 'CJ')

