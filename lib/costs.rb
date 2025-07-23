area = 200
productivity = 84
width_operation = 2.40
velocity = 3.64
field_efficiency = 90

def effective_field_capacity(width_operation, velocity)
    #Capacidade de campo efetiva - CCE
    (width_operation*velocity)/10.0
end

def operational_field_capability(cce, efc)
    #Capacidade de campo operacional - CCO
    cce*(efc/100.0)
end

def operational_production_capacity(cco, productivity)
    cco*productivity
end

var_effective_field_capacity = effective_field_capacity(width_operation, velocity)
var_operational_field_capability = operational_field_capability(var_effective_field_capacity, field_efficiency)
var_operational_production_capacity_t = operational_production_capacity(var_operational_field_capability, productivity)

# puts var_operational_production_capacity_t

################################################################################
######Custo fixo
################################################################################

initial_value = 1000000
final_value_factor = 35
useful_life_years = 5
useful_life_hours = 12000
interest_rate = 8.75
fast = 1

def final_value(initial_value, final_value_factor)
    initial_value*final_value_factor/100.0
end

def annual_depreciation(initial_value, final_value, years)
    (initial_value - final_value)/years
end

def annual_interest_rate(initial_value, final_value, interest_rate)
    ((initial_value + final_value)/2.0)*(interest_rate/100.0)
end

def asta(initial_value, fast)
    initial_value*(fast/100.0)
end

def annual_fixed_cost(annual_depreciation, annual_interest, asta)
    annual_depreciation + annual_interest + asta
end

def fixed_hourly_cost(annual_fixed_cost, useful_life_hours, useful_life_years)
    annual_fixed_cost/(useful_life_hours/useful_life_years)
end

################################################################################

var_final_value = final_value(initial_value, final_value_factor)
var_annual_depreciation = annual_depreciation(initial_value, var_final_value, useful_life_years)
var_annual_interest_rate = annual_interest_rate(initial_value, var_final_value, interest_rate)
var_asta = asta(initial_value, fast)
var_cfa = annual_fixed_cost(var_annual_depreciation, var_annual_interest_rate, var_asta)
var_cfh = fixed_hourly_cost(var_cfa, useful_life_hours, useful_life_years)
# puts var_cfh

#################################################################################
######Custo variável
#################################################################################

engine_power = 350
fuel_price = 3.50
fuel_consumption_factor = 0.12
repair_maintenance_factor = 85

def fuel_consumption(engine_power, fuel_consumption_factor)
    engine_power * fuel_consumption_factor
end

def fuel_cost(fuel_consumption, fuel_price)
    fuel_consumption* fuel_price
end

def repair_maintenance_costs(initial_value, repair_maintenance_factor, useful_life_hours)
    (initial_value*(repair_maintenance_factor/100.0))/useful_life_hours
end

def hourly_variable_cost(fuel_cost, repair_maintenance_costs)
    fuel_cost + repair_maintenance_costs
end


var_fuel_consumption = fuel_consumption(engine_power, fuel_consumption_factor)
var_fuel_cost = fuel_cost(var_fuel_consumption, fuel_price)
var_repair_maintenance_costs = repair_maintenance_costs(initial_value, repair_maintenance_factor, useful_life_hours)
var_hourly_variable_cost = hourly_variable_cost(var_fuel_cost, var_repair_maintenance_costs)

# puts var_hourly_variable_cost


#################################################################################
######Custo Indireto Parcial
#################################################################################

def hourly_cost_without_labor(hourly_variable_cost, fixed_hourly_cost)
    hourly_variable_cost + fixed_hourly_cost
end

def operating_cost_without_labor_ha(hourly_cost_without_labor, operational_field_capability)
    hourly_cost_without_labor/operational_field_capability
end

def operating_cost_without_labor_t(hourly_cost_without_labor, operational_production_capacity)
    hourly_cost_without_labor/operational_production_capacity
end

def operational_production_capacity(hourly_cost_without_labor, operational_production_capacity)
    hourly_cost_without_labor/operational_production_capacity
end


var_hourly_cost_without_labor = hourly_cost_without_labor(var_hourly_variable_cost, var_cfh)
var_operational_production_capacity = operational_production_capacity(var_hourly_cost_without_labor, var_operational_production_capacity_t)

#################################################################################
######Mão de obra
#################################################################################

def hourly_labor_cost(monthly_salary, total_salary_charges, hours_worked_per_month)
    (monthly_salary+(monthly_salary*(total_salary_charges/100.0)))/hours_worked_per_month
end


monthly_salary = 2500
total_salary_charges = 45
hours_worked_per_month = 200

var_hourly_labor_cost = hourly_labor_cost(monthly_salary, total_salary_charges, hours_worked_per_month)

#################################################################################
######Total
#################################################################################

def total_hourly_labor_cost(hourly_cost_without_labor, hourly_labor_cost)
    hourly_cost_without_labor + hourly_labor_cost
end

def total_operating_cost_ha(total_hourly_labor_cost, operational_field_capability)
    total_hourly_labor_cost/operational_field_capability
end

def total_operating_cost_t(total_hourly_labor_cost, operational_production_capacity)
    puts total_hourly_labor_cost, operational_production_capacity
    total_hourly_labor_cost/operational_production_capacity
end

var_total_hourly_labor_cost = total_hourly_labor_cost(var_hourly_cost_without_labor, var_hourly_labor_cost)
var_total_operating_cost_ha = total_operating_cost_ha(var_total_hourly_labor_cost, var_operational_field_capability)
var_total_operating_cost_t = total_operating_cost_t(var_total_hourly_labor_cost, var_operational_production_capacity_t)


var_total_operating_cost_t

puts "var_operational_production_capacity::::::::::", var_total_operating_cost_t