class Customer
  
    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(waiter, total, tip)
        Meal.new(waiter, self, total, tip)
    end

    def meals
        all_meals = []
        Meal.all.each do |m|
            if m.customer == self
                all_meals << m
            end
        end
        return all_meals
    end

    def waiters
        all_waiters = []
        Meal.all.each do |m|
            if m.customer == self
                all_waiters << m.waiter
            end
        end
        return all_waiters
    end


end