require 'rspec'

describe 'Borrow book' do

  it 'should do something' do
    User.create username: s
    lending = Lending.new user: User.first
    true.should == false
  end
end