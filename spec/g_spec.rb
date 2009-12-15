$:.unshift File.dirname(__FILE__) + '/../lib'
require 'g'

describe 'g' do
  before do
    @g = Object.new
    Growl.should_receive(:new).and_return(@g)
  end

  it 'calls with a arg' do
    @g.should_receive(:notify).with($0, "g", 'foo'.pretty_inspect, 0, true)
    g('foo').should == 'foo'
  end

  it 'calls with block' do
    block = Proc.new {}
    @g.should_receive(:notify).with($0, "g", block.pretty_inspect, 0, true)
    g(&block).should == block
  end

  it 'calls with args' do
    block = Proc.new {}
    @g.should_receive(:notify).exactly(3).times
    g('foo', 1, &block).should == ['foo', 1, block]
  end

  it 'calls without args' do
    @g.should_receive(:notify).with($0, "g", "g!", 0, true)
    g.should == nil
  end
end
