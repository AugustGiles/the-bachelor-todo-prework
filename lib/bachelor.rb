def get_first_name_of_season_winner(data, season)
  return_value = []
  data.each do |i, stats|
    if i==:"season #{season}"
      stats.each do |individuals|
        if individuals[:status] == "Winner"
          return_value.push(individuals[:name])
        end
      end
    end
  end
  return_value.join.split(" ")[0]
end

def get_contestant_name(data, occupation)
  return_value = []
  data.each do |i, stats|
    stats.each do |individuals|
      if individuals[:occupation] == occupation
        return_value.push(individuals[:name])
      end
    end
  end
  return_value
end

def count_contestants_by_hometown(data, hometown)
  return_value = []
  data.each do |i, stats|
    stats.each do |individuals|
      if individuals[:hometown] == hometown
        return_value.push(individuals[:name])
      end
    end
  end
  return_value.length
end

def get_occupation(data, hometown)
  return_value = []
  data.each do |i, stats|
    stats.each do |individuals|
      if individuals[:hometown] == hometown
        return_value.push(individuals[:occupation])
      end
    end
  end
  return_value[0]
end

def get_average_age_for_season(data, season)
  return_value = []
  data.each do |i, stats|
    if i==:"season #{season}"
      stats.each do |individuals|
        return_value.push(individuals[:age])
      end
    end
  end
  return_value
end
