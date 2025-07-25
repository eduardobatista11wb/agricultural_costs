# Agriculture Costs

Este projeto é uma aplicação Ruby para cálculo e gerenciamento de custos agrícolas.

## Estrutura do Projeto

- `app.rb`: Arquivo principal da aplicação.
- `lib/costs.rb`: Biblioteca com as funções de cálculo de custos.

## Fórmulas de Cálculo de Custos

### 1. Capacidade de Campo Efetiva (CCE)
**Fórmula:**
CCE = (Largura da Operação × Velocidade) / 10
**Descrição:** Mede a área que a máquina cobre por hora, desconsiderando perdas de eficiência.

### 2. Capacidade de Campo Operacional (CCO)
**Fórmula:**
CCO = CCE × (Eficiência de Campo / 100)
**Descrição:** Ajusta a CCE considerando a eficiência real do campo.

### 3. Capacidade Operacional de Produção
**Fórmula:**
COP = CCO × Produtividade
**Descrição:** Mede a produção operacional por unidade de tempo.

### 4. Valor Final do Equipamento
**Fórmula:**
Valor Final = Valor Inicial × (Fator de Valor Final / 100)
**Descrição:** Estima o valor residual do equipamento ao final de sua vida útil.

### 5. Depreciação Anual
**Fórmula:**
Depreciação = (Valor Inicial - Valor Final) / Anos de Vida Útil
**Descrição:** Calcula a depreciação anual do equipamento.

### 6. Juros Anuais
**Fórmula:**
Juros = ((Valor Inicial + Valor Final) / 2) × (Taxa de Juros / 100)
**Descrição:** Calcula o custo de oportunidade do capital investido.

### 7. ASTA (Assistência Técnica e Seguros)
**Fórmula:**
ASTA = Valor Inicial × (Fator ASTA / 100)
**Descrição:** Estima custos anuais com assistência técnica e seguros.

### 8. Custo Fixo Anual
**Fórmula:**
Custo Fixo Anual = Depreciação + Juros + ASTA
**Descrição:** Soma todos os custos fixos anuais do equipamento.

### 9. Custo Fixo Horário
**Fórmula:**
Custo Fixo Horário = Custo Fixo Anual / (Horas Totais de Vida Útil / Anos de Vida Útil)
**Descrição:** Distribui o custo fixo anual pelas horas trabalhadas.

### 10. Consumo de Combustível
**Fórmula:**
Consumo = Potência do Motor × Fator de Consumo
**Descrição:** Estima o consumo horário de combustível.

### 11. Custo de Combustível
**Fórmula:**
Custo = Consumo × Preço do Combustível
**Descrição:** Calcula o custo horário de combustível.

### 12. Manutenção e Reparos
**Fórmula:**
Manutenção = (Valor Inicial × (Fator de Manutenção / 100)) / Horas Totais de Vida Útil
**Descrição:** Estima o custo horário de manutenção e reparos.

### 13. Custo Variável Horário
**Fórmula:**
Custo Variável = Custo de Combustível + Manutenção
**Descrição:** Soma os custos variáveis por hora.

### 14. Custo Horário sem Mão de Obra
**Fórmula:**
Custo Horário = Custo Variável + Custo Fixo
**Descrição:** Soma custos fixos e variáveis por hora.

### 15. Custo Operacional sem Mão de Obra por ha
**Fórmula:**
Custo Operacional (ha) = Custo Horário / CCO
**Descrição:** Custo operacional por hectare.

### 16. Custo Operacional sem Mão de Obra por t
**Fórmula:**
Custo Operacional (t) = Custo Horário / COP
**Descrição:** Custo operacional por tonelada.

### 17. Custo Horário da Mão de Obra
**Fórmula:**
Custo Mão de Obra = (Salário Mensal + (Salário Mensal × Encargos / 100)) / Horas Trabalhadas por Mês
**Descrição:** Calcula o custo horário da mão de obra.

### 18. Custo Total Horário
**Fórmula:**
Custo Total Horário = Custo Horário sem Mão de Obra + Custo Mão de Obra
**Descrição:** Soma todos os custos horários.

### 19. Custo Operacional Total por ha
**Fórmula:**
Custo Total (ha) = Custo Total Horário / CCO
**Descrição:** Custo total por hectare.

### 20. Custo Operacional Total por t
**Fórmula:**
Custo Total (t) = Custo Total Horário / COP
**Descrição:** Custo total por tonelada.

## Como Executar

1. Certifique-se de ter o Ruby instalado (>= 2.5).
2. Clone este repositório e navegue até a pasta do projeto.
3. Execute o arquivo principal:

```bash
ruby app.rb
```

## Contribuição

Pull requests são bem-vindos! Para mudanças maiores, por favor abra uma issue primeiro para discutir o que você gostaria de mudar.

## Licença

Este projeto está sob a licença MIT. 