def nyc_pigeon_organizer(data)
  # write your code here!
  triples = data.reduce([]) do | triples, (characteristic, value_hash)|
    triples + value_hash.reduce([]) do | value_bird_pairs, (value, birds) |
      value_bird_pairs + birds.map([]) do | bird |
        [ characteristic, value, bird ]
      end
    end
  end
  
  pp "BADABING"
  pp triples
end
