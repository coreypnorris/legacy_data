require('rspec')
require('legacy_data')

describe('legacy_data') do
  it("switches keys and values") do 
    legacy_data({1 => ["A"]}).should(eq({"a" => 1})) 
  end
  it("downcases each key in converted hash") do
    legacy_data({2 => ["D"]}).should(eq({"d" => 2}))
  end
end

