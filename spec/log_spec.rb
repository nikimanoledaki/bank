# frozen_string_literal: true

require 'log'

describe Log do
  describe '#show_history' do
    it 'shows transaction history array' do
      expect(subject.show_history).to be_a(Array)
    end
  end

  describe '#add_transaction' do
    it 'mocks transaction being added to history' do
      transaction = instance_double('Transaction')
      expect(transaction).to receive(:show_details).and_return('details')
      subject.add(transaction.show_details)
      expect(subject.show_history[0]).not_to be_empty
    end
  end
end
