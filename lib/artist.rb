class Artist
  attr_accessor :name #=> What methods were added?
  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    # match = nil 
    #
    # @@all.each do |artist|
    #   if artist.name == name
    #     match = artist
    #   end
    # end
    # match
    
    @@all.find{|a| a.name == name}
  end

  def save
    @@all << self
  end


end

#taylor = Artst.new
#taylor.name = "Taylor"
#taylor.save #=> we store the instance of the artist in memory.


# 1. Instantiation and Saving Objectives
# 2. Class Variables
# 3. Class Methods
# 4. Enumeration - looping to find a match
# 5. Introduce a module to share this functionality with songs.
