def nyc_pigeon_organizer(data)
  # write your code here!
triple_list = data.reduce([]) do |triple_list, (characteristic, value_hash) |
  value_hash.reduce(triple_list) do |triple_list, (value, birds)|
    birds.reduce(triple_list) do |memo, bird|
      memo << [characteristic, value.to_s, bird]
    end
  end
end

grouped = triple_list.group_by { |(c, v, bird)| bird }

mapped = grouped.map do |bird, triple_list|
  [bird, triple_list.group_by {|(c, v, bird) | c }]
end

hashed = mapped.to_h 

transformed = hashed.map do | bird, category_hash|
  category_values_pair = category_hash.map do |characteristic, triple_list|
    #pp triple_list
    values = triple_list.reduce([]) do |memo, (c, v, bird)|
      memo << v
    end
    [characteristic, values]
  end

  [ bird, category_values_pair.to_h ]
end

transformed.to_h
end
