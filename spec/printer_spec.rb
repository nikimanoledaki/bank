# frozen_string_literal: true

require 'printer'

describe Printer do
  describe '#statement' do
    it 'returns a string' do
      log = [{ date: '25/02/2020', type: 'deposit',
      value: 10, balance: 20 }]

      expect do
        subject.statement(log)
      end.to output("date || credit || debit || balance\n25/02/2020 || 10.00 || || 20.00\n").to_stdout

    end
  end
end
