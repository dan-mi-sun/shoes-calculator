Shoes.app :title => "My Amazing Calculator", :width => 240, :height => 240 do
  background black, width: 240, height: 240
  stack :margin => 20, width: 195 do
    @output = edit_line
    
    flow do
      %w(7 8 9 4 5 6 1 2 3 0 + / * -).each do |op|      
        button op do         
          append op
        end
      end

      button "C" do
        clear_output
      end
      
      button "=" do
        eval_expression
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
  
end
