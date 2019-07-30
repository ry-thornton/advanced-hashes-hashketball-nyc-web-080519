require 'pry'
def game_hash
  alan_anderson = {
  :name => "Alan Anderson",
  :number => 0,
  :shoe => 16,
  :points => 22,
  :rebounds => 12,
  :assists => 12,
  :steals => 3,
  :blocks => 1,
  :slam_dunks => 1
}

reggie_evans = {
  :name => "Reggie Evans",
  :number => 30,
  :shoe => 14,
  :points => 12,
  :rebounds => 12,
  :assists => 12,
  :steals => 12,
  :blocks => 12,
  :slam_dunks => 7,
}

brook_lopez = {
  :name => "Brook Lopez",
  :number => 11,
  :shoe => 17,
  :points => 17,
  :rebounds => 19,
  :assists => 10,
  :steals => 3,
  :blocks => 1,
  :slam_dunks => 15,
}

mason_plumlee = {
  :name => "Mason Plumlee",
  :number => 1, 
  :shoe => 19,
  :points => 26,
  :rebounds => 11,
  :assists => 6,
  :steals => 3,
  :blocks => 8,
  :slam_dunks => 5,
   
}

jason_terry = {
  :name => "Jason Terry",
  :number => 31,
  :shoe => 15,
  :points => 19,
  :rebounds => 2,
  :assists => 2,
  :steals => 4,
  :blocks => 11,
  :slam_dunks => 1 
  
}

jeff_adrien = {
  :name => "Jeff Adrien",
  :number => 4,
  :shoe => 18,
  :points => 10,
  :rebounds => 1,
  :assists => 1,
  :steals => 2,
  :blocks => 7,
  :slam_dunks => 2
}

bismack_biyombo = {
  :name => "Bismack Biyombo",
  :number => 0,
  :shoe => 16,
  :points => 12,
  :rebounds => 4,
  :assists => 7,
  :steals => 22,
  :blocks => 15,
  :slam_dunks => 10 
}

desagna_diop = {
  :name => "DeSagna Diop",
  :number => 2,
  :shoe => 14,
  :points => 24,
  :rebounds => 12,
  :assists => 12,
  :steals => 4,
  :blocks => 5,
  :slam_dunks => 5 
}

ben_gordon = {
  :name => "Ben Gordon",
  :number => 8,
  :shoe => 15,
  :points => 33,
  :rebounds => 3,
  :assists => 2,
  :steals => 1,
  :blocks => 1,
  :slam_dunks => 0
  
}

kemba_walker = {
  :name => "Kemba Walker",
  
  :number => 33,
  :shoe => 15,
  :points => 6,
  :rebounds => 12,
  :assists => 12,
  :steals => 7,
  :blocks => 5, 
  :slam_dunks => 12
}
nets = [alan_anderson, reggie_evans, brook_lopez, mason_plumlee,
   jason_terry]
   hornets = [jeff_adrien, bismack_biyombo, desagna_diop, ben_gordon, kemba_walker]

  game_hash = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => nets
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => hornets 
  }
  }
  return game_hash
end


def num_points_scored(name)
  game_hash[:home][:players].each do |index|
    if name == index[:name]
      return index[:points]
    end
    game_hash[:away][:players].each do |index|
      if name == index[:name] 
        return index[:points]
      end
    end
  end
end

def shoe_size(name)
  game_hash[:home][:players].each do |index|
    if name == index[:name]
      return index[:shoe]
    end
    game_hash[:away][:players].each do |index|
      if name == index[:name] 
        return index[:shoe]
      end
    end
  end
end

def team_colors(team)
  if game_hash[:home][:team_name] == team
    return game_hash[:home][:colors]
    elsif game_hash[:away][:team_name] == team
    return game_hash[:away][:colors]
  end
end

def team_names
  teams = []
  teams.push(game_hash[:home][:team_name])
  teams.push(game_hash[:home][:team_name])
  return teams 
end

def player_numbers(team)
  numbers = []
  if game_hash[:home][:team_name] == team
    (game_hash[:home][:players]).each do |hash|
      numbers.push(hash[:number])
    end
    elsif game_hash[:away][:team_name] == team
    game_hash[:away][:players].each do |hash|
      numbers.push(hash[:number])
    end
  end
  return numbers
  
end


def player_stats(name)
  game_hash[:home][:players].each do |index|
    if name == index[:name]
      index.delete(:name)
      return index
    end
    game_hash[:away][:players].each do |index|
      if name == index[:name] 
        index.delete(:name)
        return index
      end
    end
  end
end



def big_shoe_rebounds
  shoe_sizes = []
  game_hash[:home][:players].each do |index|
    shoe_sizes.push(index[:shoe])
  end
  game_hash[:away][:players].each do |index|
    shoe_sizes.push(index[:shoe])
  end
  value = shoe_sizes.max 
  game_hash[:home][:players].each do |index|
    if index[:shoe] == value
      return index[:rebounds]
    game_hash[:away][:players].each do |index|
        if index[:shoe] == value
          return index[:rebounds]
        end
      end
    end
  end
end
