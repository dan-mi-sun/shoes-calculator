Shoes.app :title => "My Amazing Calculator", :width => 240, :height => 240 do
  background black, width: 240, height: 240
  stack :margin => 20, width: 195 do
    @output = edit_line
    
    flow do
      %W(7 8 9 4 5 6 1 2 3 0 + / * - C 2\u207F =).each do |op|      
        button op do         
          case op
          when ('0'..'9')
            append(op)
          when "="
            eval_expression
          when "C"
            clear_output
          when "2\u207F"
            power_of_two
          else 
            append(op)
          end
        end
      end
    end

  end

  # Stick a string on the end of our input
  #
  def append(s)
    if @input.nil?
      @input = ""
    end
    @input += s
    @output.text = @input
  end

  # Evaluate the input we've got so far
  #
  def eval_expression
    @input = eval(@input).to_s
    @output.text = @input
  end

  def clear_output
    @output.text = ""
    @input = nil
  end

  def power_of_two
    @input = eval(@input)
    @input = 2**@input
    @input = @input.to_s
    @output.text = @input
  end

end
