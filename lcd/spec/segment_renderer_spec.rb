require 'rspec'
require 'segment_renderer'

describe SegmentRenderer do

  it "defaults to size 2" do
    SegmentRenderer.new.size.should == 2
  end
  
  it "outputs the same width for all digits" do
    renderer = SegmentRenderer.new
    0.upto(9) do |d|
      renderer.render(d).lines.map(&:chomp).all? { |l| l.size == renderer.size }
    end
  end
  
end
