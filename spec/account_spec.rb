require 'account'

describe Account do
  it 'initializes with a balance' do
    expect(subject.showBalance).to be_a(Float)
  end
end
