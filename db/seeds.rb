file = File.open('db/seeds.json')
contents = file.read
parsed_poems = JSON.parse(contents)


poems = parsed_poems.each_with_index do |poem, index|
  poem = Poem.create!(
    author: parsed_poems[index]["author"],
    title: parsed_poems[index]["title"],
    text: parsed_poems[index]["text"].join("+")
  )
end