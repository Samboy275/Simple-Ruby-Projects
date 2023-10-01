# frozen_string_literal: true

require_relative '../caesar_cipher'

RSpec.describe 'Caesar Cipher' do
  describe 'Replaces Characters By Key' do
    it 'moves letters by 4 characters' do
      result = 'EXXEGOEXSRGI'
      expect(ceaser_cipher('ATTACKATONCE', 4)).to eq(result)
    end
  end
end
