class VariableCost

    def fuel_consumption(engine_power, fuel_consumption_factor)
        ###CB
        value = engine_power * fuel_consumption_factor
        {value: value, unit: "L/h"}
    end
    
    def fuel_cost(fuel_consumption, fuel_price)
        ###CCB
        value = fuel_consumption* fuel_price
        {value: value, unit: "R$/h"}
    end
    
    def repair_maintenance_costs(initial_value, repair_maintenance_factor, useful_life_hours)
        ###CRM
        value = (initial_value*(repair_maintenance_factor/100.0))/useful_life_hours
        {value: value, unit: "R$/h"}
    end
    
    def hourly_variable_cost(fuel_cost, repair_maintenance_costs)
        ###CVH
        value = fuel_cost + repair_maintenance_costs
        {value: value, unit: "R$/h"}
    end

#################################################################################
######Custo Indireto Parcial
#################################################################################

    def hourly_cost_without_labor(hourly_variable_cost, fixed_hourly_cost)
        ###CH
        value = hourly_variable_cost + fixed_hourly_cost
        {value: value, unit: "R$/h"}
    end
    
    def operating_cost_without_labor_ha(hourly_cost_without_labor, operational_field_capability)
        ###CPO
        value = hourly_cost_without_labor/operational_field_capability
        {value: value, unit: "R$/ha"}
    end
    
    def operating_cost_without_labor_t(hourly_cost_without_labor, operational_production_capacity)
        ###CPO
        value = hourly_cost_without_labor/operational_production_capacity
        {value: value, unit: "R$/t"}
    end

#################################################################################
######Labor
#################################################################################
    
    def hourly_labor_cost(monthly_salary, total_salary_charges, hours_worked_per_month)
        ###MDO
        value = (monthly_salary+(monthly_salary*(total_salary_charges/100.0)))/hours_worked_per_month
        {value: value, unit: "R$/h"}
    end

#################################################################################
######Total
#################################################################################
    
    def total_hourly_labor_cost(hourly_cost_without_labor, hourly_labor_cost)
        value = hourly_cost_without_labor + hourly_labor_cost
        {value: value, unit: "R$/h"}
    end

    def total_operating_cost_ha(total_hourly_labor_cost, operational_field_capability)
        value = total_hourly_labor_cost/operational_field_capability
        {value: value, unit: "R$/ha"}
    end

    def total_operating_cost_t(total_hourly_labor_cost, operational_production_capacity)
        value = total_hourly_labor_cost/operational_production_capacity
        {value: value, unit: "R$/t"}
    end

end