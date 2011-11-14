$:.unshift File.dirname(__FILE__) + '/../lib'
require 'g'

describe 'g' do
  it 'calls with a arg' do
    GNTP.should_receive(:notify).with(:app_name => $0, :title => "g", :text => "foo".pretty_inspect, :sticky=>true)
    g('foo').should == 'foo'
  end

  it 'calls with block' do
    block = Proc.new {}
    GNTP.should_receive(:notify).with(:app_name => $0, :title => "g", :text => block.pretty_inspect, :sticky=>true)
    g(&block).should == block
  end

  it 'calls with args' do
    block = Proc.new {}
    GNTP.should_receive(:notify).exactly(3).times
    g('foo', 1, &block).should == ['foo', 1, block]
  end

  it 'calls without args' do
    GNTP.should_receive(:notify).with(:app_name => $0, :title => "g", :text => "g!", :sticky=>true)
    g.should == nil
  end
end
