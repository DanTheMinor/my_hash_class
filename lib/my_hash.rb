class MyHash
  define_method(:initialize) do
    @key = []
    @value = []
  end
  
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

  define_method(:has_value?) do |value|
    index = 0
    until @value.length() == index
      if @value[index] == value
        return true
      end
      index += 1
    end
    return false
  end

  define_method(:length) do
    @key.length()
  end

  define_method(:retrieve_keys) do
      return @key
  end

  define_method(:retrieve_values) do
      return @value
  end

  define_method(:merge) do |added_hash|
    @key = @key.+(added_hash.retrieve_keys())
    @value = @value.+(added_hash.retrieve_keys())

  end
end
