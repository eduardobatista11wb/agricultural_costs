class Operation

    def initialize(width_operation)
        @width_operation = width_operation
    end

    def effective_field_capacity(velocity)
        #Capacidade de campo efetiva - CCE
        #hectare/h
        value = (@width_operation * velocity) / 10.0
        { value: value, unit: "ha/h" }
    end
    
    def operational_field_capability(velocity, efc)
        #Capacidade de campo operacional - CCO
        #hectare/h
        value = effective_field_capacity(velocity)[:value]*(efc/100.0)
        { value: value, unit: "ha/h" }
    end
    
    def operational_production_capacity(productivity, velocity, efc)
        #capacidade de produção operacional
        #t/h
        value = operational_field_capability(velocity, efc)[:value]*productivity
        { value: value, unit: "ha/h" }
    end

end