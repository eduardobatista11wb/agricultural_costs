require_relative 'lib/operation'
require_relative 'lib/fixedCost'
require_relative 'lib/variableCost'

area = 200
productivity = 84
width_operation = 2.40
velocity = 3.64
field_efficiency = 90

initial_value = 1000000
final_value_factor = 35
useful_life_years = 5
useful_life_hours = 12000
interest_rate = 8.75
fast = 1

engine_power = 350
fuel_price = 3.50
fuel_consumption_factor = 0.12
repair_maintenance_factor = 85

monthly_salary = 2500
total_salary_charges = 45
hours_worked_per_month = 200

operation = Operation.new(width_operation)
fixedCost = FixedCost.new(initial_value)
variableCost = VariableCost.new()

cce = operation.effective_field_capacity(velocity)
cco = operation.operational_field_capability(velocity, field_efficiency)
cpo = operation.operational_production_capacity(productivity, velocity, field_efficiency)

vf = fixedCost.final_value(final_value_factor)
dpa = fixedCost.annual_depreciation(vf[:value], useful_life_years)
jra = fixedCost.annual_interest_rate(vf[:value], interest_rate)
asta = fixedCost.asta(1)
cfa = fixedCost.annual_fixed_cost(dpa[:value], jra[:value], asta[:value])
cfh = fixedCost.fixed_hourly_cost(cfa[:value], useful_life_hours, useful_life_years)

cb = variableCost.fuel_consumption(engine_power, fuel_consumption_factor)
ccb = variableCost.fuel_cost(cb[:value], fuel_price)
crm = variableCost.repair_maintenance_costs(initial_value, repair_maintenance_factor, useful_life_hours)
cvh = variableCost.hourly_variable_cost(ccb[:value], crm[:value])

ch = variableCost.hourly_cost_without_labor(cvh[:value], cfh[:value])
coph = variableCost.operating_cost_without_labor_ha(ch[:value], cco[:value])
copt = variableCost.operating_cost_without_labor_t(ch[:value], cpo[:value])

mdo = variableCost.hourly_labor_cost(monthly_salary, total_salary_charges, hours_worked_per_month)
chlabor = variableCost.total_hourly_labor_cost(ch[:value], mdo[:value])
coph = variableCost.total_operating_cost_ha(chlabor[:value], cco[:value])
copt = variableCost.total_operating_cost_t(chlabor[:value], cpo[:value])



puts copt