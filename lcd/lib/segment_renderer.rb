class SegmentRenderer

  attr_reader :size

  def initialize
    @size = 2
  end

  def render(digit)
    if digit == 1
      <<END
|
|

|
|
END
    else
      ""
    end
    
  end
  
end
