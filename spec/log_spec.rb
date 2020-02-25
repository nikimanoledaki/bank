require 'log'

describe Log do
  describe '#show_history' do
    it 'shows transaction history' do
      expect(subject.show_history).to be_a(Array)
    end
  end

  # describe '#add_transaction' do
  #   it 'adds a transaction to an array' do
  #     transaction = Transaction.new(500, 500, type)
  #     subject.add_transaction(transaction)
  #     expect(subject.show_history).to eq []
  #   end
  # end
end

# add_transaction(date, value, type, balance)
# show_history

