class Cult
    attr_reader :name, :location, :founding_year, :slogan
    @@all =[]

    def initialize name, location, founding_year, slogan
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end
    
    def self.all
        @@all
    end

    def followers 
        oaths = BloodOath.all.select do |oath|
            oath.cult == self
        end
        oaths.map do |each_oath|
            each_oath.follower
        end    
    end        
    
    def recruit_follower follower, initiation_date
        BloodOath.new follower, self, initiation_date
    end    

    def cult_population
        followers.count
    end

    def self.find_by_name name
        all.find do |cults|
            cults.name == name
        end
    end 
    
    def self.find_by_location location
        all.select do |cults|
            cults.location == location
        end
    end
    
    def self.find_by_founding_year year
        all.select do |cults|
            cults.founding_year == year
        end
    end   
    
    def average_age
        followers.reduce(0) do |sum, person|
            sum + person.age
        end / followers.count.to_f
    end   
    
    def my_followers_mottos
        followers.each do |person|
            puts person.life_motto
        end
    end      
    
    def self.least_popular
        all.min_by do |cults|
            cults.followers.count
        end
    end   
    
    def self.most_common_location
        locations = all.map do |cult|
            cult.location
        end
        locations.max_by {|i| locations.count(i)}
    end                

end    