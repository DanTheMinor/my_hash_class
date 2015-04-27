require('rspec')
require('my_hash')
require('pry')

describe(MyHash) do
  describe('MyHash#fetch') do
    it('retrieves a stored value by its key') do
      test_hash = MyHash.new()
      test_hash.store('kitten', 'cute')
      expect(test_hash.fetch('kitten')).to(eq('cute'))
    end
  end
  describe('MyHash#has_key?')
    it('returns true if the key exists within the hash') do
      test_hash = MyHash.new()
      test_hash.store('red', 'blue')
      expect(test_hash.has_key?('red')).to(eq(true))
  end
end
