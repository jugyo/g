$:.unshift File.dirname(__FILE__) + '/../lib'
require 'g'

describe 'g' do
  it 'should return original args' do
    g('foo').should         == 'foo'
    g('foo', 'bar').should  == ['foo', 'bar']
    g().should              == nil
  end
end
