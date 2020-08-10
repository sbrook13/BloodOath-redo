class Follower
    attr_reader :name, :age, :life_motto
    @@all = []

    def initialize name, age, life_motto
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end   
    
    def self.all
        @@all
    end

    def cults
        all_oaths = BloodOath.all.select do |oath|
            oath.follower == self
        end
        all_oaths.map do |each_oath|
            each_oath.cult
        end
    end        

    def join_cult cult, date
        BloodOath.new self, cult, date
    end
    
    def self.of_a_certain_age age
        all.select do |person|
            person.age >= age
        end
    end

    def my_cults_slogans
        cults.each do |cult|
            puts cult.slogan
        end
    end   
    
    def self.most_active
        all.max_by do |follower|
            follower.cults.count
        end
    end   
    
    def self.top_ten
        all.max_by(10) do |follower|
            -follower.cults.count
        end    
    end    


end        