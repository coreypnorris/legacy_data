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

# example_hash = {
#   1  => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
#   2  => ["D", "G"],
#   3  => ["B", "C", "M", "P"],
#   4  => ["F", "H", "V", "W", "Y"],
#   5  => ["K"],
#   8  => ["J", "X"],
#   10 => ["Q", "Z"]
# }

# The example hash should turn out like this
# { "A" => 1, "B" => 3,  "C" => 3, "D" => 2, "E" => 1,
#   "F" => 4, "G" => 2,  "H" => 4, "I" => 1, "J" => 8,
#   "K" => 5, "L" => 1,  "M" => 3, "N" => 1, "O" => 1,
#   "P" => 3, "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
#   "U" => 1, "V" => 4,  "W" => 4, "X" => 8, "Y" => 4,
#   "Z" => 10
# }
