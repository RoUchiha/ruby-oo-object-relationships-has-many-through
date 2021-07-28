class Waiter

    attr_accessor :name, :experience

    @@all = []

    def initialize(name, experience)
        @name = name
        @experience = experience
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip = 0)
        Meal.new(self, customer, total, tip)
    end

    def meals 
        all_waiters = []
        Meal.all.each do |m|
            if m.waiter == self
                all_waiters << m 
            end
        end
        return all_waiters
    end

    def best_tipper
        biggest_tip = Meal.all.max do |m1, m2|
            m1.tip <=> m2.tip
        end
        biggest_tip.customer
    end
   

        



end