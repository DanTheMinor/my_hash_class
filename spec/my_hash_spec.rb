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
  describe('MyHash#has_value?')
    it('returns true if the value exists with the hash') do
      test_hash = MyHash.new()
      test_hash.store('one', 'two')
      test_hash.store('x','y')
      expect(test_hash.has_value?('x')).to(eq(false))
  end
  describe('MyHash#length')
    it('returns the number of (key, value) pairs in the hash') do
      test_hash = MyHash.new()
      test_hash.store('x', 'c')
      test_hash.store('g', 'h')
      test_hash.store('t', 'j')
      expect(test_hash.length()).to(eq(3))
    end
end
