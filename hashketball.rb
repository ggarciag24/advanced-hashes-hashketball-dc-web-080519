require ('pry')

def game_hash
   {
      :home => {
        :team_name => "Brooklyn Nets",
        :colors => ["Black","White"],
        :players => [ 
          {
          :name => "Alan Anderson",
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
          },
          {
          :name => "Reggie Evans",
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
          },
          {
          :name => "Brook Lopez",
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
          },
          {
          :name => "Mason Plumlee",
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 11,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
          },
          {
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
          ]
          },
      :away => {
        :team_name => "Charlotte Hornets",
        :colors => ["Turquoise","Purple"],
        :players => [ 
          {
          :name => "Jeff Adrien",
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
          },
          {
          :name => "Bismack Biyombo",
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10
          },
          {
          :name => "DeSagna Diop",
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
          },
          {
          :name => "Ben Gordon",
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
          },
          {
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
          ]
      }
    }
end

def num_points_scored(player_name)
  
    game_hash.each do |location, information|
      information[:players].each do |player_info|
        if player_info[:name] == player_name
          return player_info[:points]
        end
      end 
  end  
end

def shoe_size(player_name)
    game_hash.each do |location, information|
      information[:players].each do |player_info|
        if player_info[:name] == player_name
          return player_info[:shoe]
        end
      end
    end  
end  

def team_colors(team_name)
  game_hash.each do |location, information|
    information.each do |team_property, property_value|
      if property_value == team_name
        return information[:colors]
      end
    end  
  end
end

def team_names
  new = []
  game_hash.each do |location, information|
    information.each do |team_property, property_value|
      if team_property == :team_name
        new.push(property_value)
      end
    end
  end  
  new
end

def player_numbers(team_name)
  new = []
  game_hash.each do |location, information|
    information.each do |team_property, property_value|
      if property_value == team_name
        information[:players].each do |player|
            new.push(player[:number])
        end
      end
    end
  end
  new
end

def player_stats(player_name)
  game_hash.each do |location, information|
    information.each do |team_property, property_value|
      if team_property == :players
        property_value.each do |player_info|
          if player_info[:name] == player_name
             new = {}
             new[:number] = player_info[:number]
             new[:shoe] = player_info[:shoe]
             new[:points] = player_info[:points]
             new[:rebounds] = player_info[:rebounds]
             new[:assists] = player_info[:assists]
             new[:steals] = player_info[:steals]
             new[:blocks] = player_info[:blocks]
             new[:slam_dunks] = player_info[:slam_dunks]
             return new
          end 
        end
      end
    end
  end
end

def big_shoe_rebounds
  arr = []
  game_hash.each do |location, information|
    information.each do |team_property, property_value|
      if team_property == :players
        property_value.each do |player_info|
          arr.push(player_info[:shoe])
        end
      end
    end
  end
  big_rebounds = ""
  largest_shoe = arr.max
  game_hash.each do |location, information|
    information.each do |team_property, property_value|
     if property_value == :players
        property_value.each do |player_info|
          if player_info[:shoe] == largest_shoe
            big_rebounds =  player_info[:rebounds]
          end
        end
      end
    end
  end  
  big_rebounds
end














