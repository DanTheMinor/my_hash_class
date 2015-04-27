class MyHash
  define_method(:initialize) do
    #@hash = [@key, @value]
    @key = []
    @value = []
  end
  #MyHash.new('1', 'red' => '2', 'blue')
  #MyHash.store(key, value)
  define_method(:store) do |key, value|
    @key.push(key)
    @value.push(value)
  end

  define_method(:fetch) do |key|
    index = 0
    until @key.length() == index
      if @key[index] == key
        return @value[index]
      end
      index += 1
    end
  end

  define_method(:has_key?) do |key|
    index = 0
    until @key.length() == index
      if @key[index] == key
        return true
      end
      index += 1
    end
    return false
  end
end
