# frozen_string_literal: true

require 'log'

describe Log do
  describe '#show_history' do
    it 'shows transaction history array' do
      expect(subject.show_history).to be_a(Array)
    end
  end

  describe '#add_transaction' do
    it 'adds a transaction to a history array' do
      transaction = Transaction.new
      value = 1.00
      balance = 0.00
      type = 'deposit'
      transaction.add_details(value, balance, type)
      subject.add_transaction(transaction.show_details)
      expect(subject.show_history[0]).not_to be_empty
    end
  end
end
