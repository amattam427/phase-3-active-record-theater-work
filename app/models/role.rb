class Role < ActiveRecord::Base
    has_many :auditions

    def actors 
        self.auditions.map do |a|
            a.actor
        end
    end

    def locations
        self.auditions.map do |a|
            a.location
        end
    end

    def lead
        audition = self.auditions.find {|a| a.hired == true}
            return audition if audition
            "no actor has been hired for this role"
            end
    def understudy
        counter = 0
        self.auditions.each do |a|
            if a.hired == true
                return a if counter > 0
            end
        end
        "no actor has been hired for understudy for this role"
    end
end