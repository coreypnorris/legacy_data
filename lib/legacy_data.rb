legacy_hash = { 
  1  => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
  2  => ["D", "G"],
  3  => ["B", "C", "M", "P"],
  4  => ["F", "H", "V", "W", "Y"],
  5  => ["K"],
  8  => ["J", "X"],
  10 => ["Q", "Z"]
}

def legacy_data(hash)
  

  reverse_hash = hash.invert
  new_hash = {}

  reverse_hash.each do |key, value|
    key.each do |i|
      i.downcase!
      new_hash[i] = value
    end
  end
  new_hash
end

puts legacy_data(legacy_hash)
