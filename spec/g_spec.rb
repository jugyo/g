$:.unshift File.dirname(__FILE__) + '/../lib'
require 'g'

describe 'g' do
  it 'calls with a arg' do
    Kernel::GROWL.should_receive(:notify).with("Kernel.g", $0, 'foo'.pretty_inspect)
    g 'foo'
  end

  it 'calls with args' do
    Kernel::GROWL.should_receive(:notify).twice
    g 'foo', 'bar'
  end

  it 'calls without args' do
    Kernel::GROWL.should_receive(:notify).with("Kernel.g", $0, nil.pretty_inspect)
    g
  end

  it 'should return original args' do
    g('foo').should         == 'foo'
    g('foo', 'bar').should  == ['foo', 'bar']
    g().should              == nil
  end
end
