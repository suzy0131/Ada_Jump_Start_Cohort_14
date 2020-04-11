my_hash = {}
my_hash = Hash.new
my_dog = {
    "name" => "woofy",
    "breed" => "spaniel",
    "age" => 3
}
puts my_dog["age"]
puts my_dog["breed"]
puts my_dog["name"]
puts my_dog["color"]

your_dog = {
    name: "barkly",
    breed: "beagle",
    age: 2
}

your_dog = Hash.new
your_dog[:name] = "barkly"
your_dog[:breed] = "beagle"
your_dog[:age] = 2
your_dog[:gibberish]
your_dog[:color] = "blenheim"
your_dog[:age] = 4

puts your_dog

human = {
    meaning: "wise man"
}
puts human[:meaning].length