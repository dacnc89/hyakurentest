  def poker_hand(s1='',s2='',s3='',s4='',s5='')
    #validate hand
    dup= []
    output = ""
    input = s1 + s2 + s3 + s4 + s5
    puts "\ninput: #{input}"
    if (s1 == '') && (s2 == '') && (s3 == '') && (s4 == '') && (s5 == '')
      output += "--"
    else
      list = [s1,s2,s3,s4,s5]
      ranks = list.map {|s| s[1..s.size]}
      #puts "list ranks: #{ranks}"
      ranks.each do |r|
        if ranks.count(r)>1
          dup << r
        end
      end
      if dup.size == 0
        output += "5 separate cards"
      elsif dup.size == 2
        output += "1P"
      elsif dup.size == 5
        output +=  "FH"
      elsif dup.size == 3
        output += "3C"
      elsif dup.size == 4
        if dup.uniq.size < 2
          output += "4C"
        else
          output += "2P"
        end
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

