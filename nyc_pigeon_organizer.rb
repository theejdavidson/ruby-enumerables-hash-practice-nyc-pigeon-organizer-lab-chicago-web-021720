def nyc_pigeon_organizer(data)
  # write your code here!
triple_list = data.reduce([]) do |triple_list, (characteristic, value_hash) |
  value_hash.reduce(triple_list) do |triple_list, (value, birds)|
    birds.reduce(triple_list) do |memo, bird|
      memo << [characteristic, value.to_s, bird]
    end
  end
end


end
