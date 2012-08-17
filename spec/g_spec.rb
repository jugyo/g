$:.unshift File.dirname(__FILE__) + '/../lib'
require 'g'

describe 'g' do
  it 'calls with a arg' do
    GNTP.should_receive(:notify).with(:app_name => $0, :title => "g", :text => "foo")
    g('foo').should == 'foo'
  end

  it 'calls with args' do
    GNTP.should_receive(:notify).exactly(2).times
    g('foo', 1).should == ['foo', 1]
  end

  it 'calls for instance' do
    object = Object.new
    GNTP.should_receive(:notify).with(:app_name => $0, :title => "g", :text => object.pretty_inspect)
    object.g.should == object
  end

  it 'calls with &block' do
    object = "foo"
    GNTP.should_receive(:notify).with(:app_name => $0, :title => "g", :text => "FOO")
    object.g {|i| i.upcase}.should == object
  end
end
