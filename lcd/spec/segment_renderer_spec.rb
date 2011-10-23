require 'rspec'
require 'segment_renderer'

describe SegmentRenderer do

  it "defaults to size 2" do
    SegmentRenderer.new.size.should == 2
  end
  
  it "renders digits in the dimensions (size + 2) by (size * 2 + 3)" do
    pending "WIP"
    1.upto(5) do |s|
      0.upto(9) do |d|
        renderer = SegmentRenderer.new(:size => s)
        lines = renderer.render(d).lines
        lines.size == s * 2 + 3
        lines.map(&:chomp).all? { |l| l.size == s + 2 }
      end
    end
  end

  it "renders a 1" do
    one = SegmentRenderer.new.render(1)
    one.should == <<END

   |
   |
   
   |
   |

END
  end
  
end
