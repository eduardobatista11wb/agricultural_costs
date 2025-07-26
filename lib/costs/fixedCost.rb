class FixedCost

    def initialize(initial_value)
        @initial_value = initial_value
    end

    def final_value(final_value_factor)
        value = @initial_value*final_value_factor/100.0
        {value: value, unit: "R$"}
    end
    
    def annual_depreciation(final_value, years)
        value = (@initial_value - final_value)/years
        {value: value, unit: "R$/year"}
    end
    
    def annual_interest_rate(final_value, interest_rate)
        value = ((@initial_value + final_value)/2.0)*(interest_rate/100.0)
        {value: value, unit: "R$/year"}
    end
    
    def asta(fast)
        value = @initial_value*(fast/100.0)
        {value: value, unit: "R$/year"}
    end
    
    def annual_fixed_cost(annual_depreciation, annual_interest, asta)
        value = annual_depreciation + annual_interest + asta
        {value: value, unit: "R$/year"}
    end
    
    def fixed_hourly_cost(annual_fixed_cost, useful_life_hours, useful_life_years)
        value = annual_fixed_cost/(useful_life_hours/useful_life_years)
        {value: value, unit: "R$/hour"}
    end

end