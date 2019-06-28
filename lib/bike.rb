class Bike

    def report_broken
        @broken = true
    end

    def broken?
        @broken == true ? true : false
    end   

end