class AbTestController < ApplicationController
  def index
    if ff? "ab-test", "a"
      # Our version "A" code here
      render :text => "Do you like Apples? <a href=\"yes\">YES</a> | <a href=\"no\">NO</a>"
      return
    end
    if ff? "ab-test", "b"
      # Our version "B" code here
      render :text => "Do you like Bananas? <a href=\"yes\">YES</a> | <a href=\"no\">NO</a>"
      return
    end
    render :text => "Nothing to see here"
  end
  
  def yes
    fluidgoal("yes")
    render :text => "Great. Me too!"
  end

  def no
    fluidgoal("no")
    render :text => "That's a shame. I love them!"
  end

end
