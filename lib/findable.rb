module Findable

  module ClassMethods
    def find_by_name # => Class Method
      puts "I'm a module method"
    end
  end

  module InstanceMethods
    def sing # => Instance method
      puts "I'mmm singing"
    end
  end

  attr_accessor :name #=> What methods were added?
  @@all = []

  def self.exists
    @@any.any? { |a| a.name == name}
  end # => true or false

  def self.find_by_name(name)
    @@all.find{|a| a.name == name}
  end

  def save
    @@all << self
  end
end
