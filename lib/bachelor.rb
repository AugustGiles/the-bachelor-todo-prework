def get_first_name_of_season_winner(data, season)
  return_value = []
  data[season].each do |individuals|
    if individuals["status"] == "Winner"
      return_value.push(individuals["name"])
    end
  end
  return_value.join.split(" ")[0]
end

def get_contestant_name(data, occupation)
  return_value = []
  data.each do |i, stats|
    stats.each do |individuals|
      if individuals["occupation"] == occupation
        return_value.push(individuals["name"])
      end
    end
  end
  return_value.join(", ")
end

def count_contestants_by_hometown(data, hometown)
  return_value = []
  data.each do |i, stats|
    stats.each do |individuals|
      if individuals["hometown"] == hometown
        return_value.push(individuals["name"])
      end
    end
  end
  return_value.length.to_i
end

def get_occupation(data, hometown)
  return_value = []
  data.each do |i, stats|
    stats.each do |individuals|
      if individuals["hometown"] == hometown
        return_value.push(individuals["occupation"])
      end
    end
  end
  return_value[0]
end

def get_average_age_for_season(data, season)
  age_array = []
  data.each do |i, stats|
    if i==:"#{season}"
      stats.each do |individuals|
        age_array.push(individuals["age"])
      end
    end
  end

  count = 0
  age_array.each do |item|
    count = count + item.to_i
  end

  return_value = (count.to_f / age_array.length).round
end

#note
