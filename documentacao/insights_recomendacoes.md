# Insights e Recomendações — Análise da Loja Shopee

## 1. Visão Geral

Neste projeto foi realizada uma análise de dados reais de uma loja da Shopee, com o objetivo de compreender o desempenho das vendas, faturamento, ticket médio, custos, taxas, investimentos em publicidade e rentabilidade da operação.

Inicialmente, os relatórios da plataforma foram extraídos e tratados utilizando Python, onde foi realizada a limpeza e transformação dos dados, além dos primeiros cálculos, análises exploratórias e visualizações.

Em seguida, os dados tratados foram armazenados em um banco de dados MySQL e analisados por meio de consultas SQL, permitindo calcular e validar indicadores importantes do negócio.

Por fim, os dados foram conectados ao Power BI para a construção de dashboards de vendas, rentabilidade e desempenho dos Shopee Ads, facilitando a visualização dos principais indicadores e a identificação de padrões relevantes para a tomada de decisão.


## 2. Principais Insights

### 2.1 Impacto dos Ads na Rentabilidade

Antes do investimento em Ads, a operação apresentava resultado positivo de R$ 1.678,87, com margem de 28,95%. Após considerar o investimento em publicidade, o resultado passou para um prejuízo de R$ 849,79, com margem de -14,66%.

Dessa forma, foi possível identificar que o custo com Ads teve um impacto significativo na rentabilidade da operação, consumindo o resultado positivo que existia antes da publicidade.


### 2.2 Eficiência dos Ads ao Longo do Período

Ao longo do período analisado, os indicadores de Ads apresentaram oscilações. O pior desempenho ocorreu entre 01/08 e 29/08, quando o ROAS atingiu 1,64 e o ACOS chegou a 61,00%.

Em contrapartida, o melhor desempenho foi registrado entre 30/08 e 08/09, com ROAS de 2,95 e ACOS de 33,93%. Essa variação demonstra que a eficiência dos anúncios não se manteve estável durante o período analisado.

Considerando a margem da operação antes dos Ads, de 28,95%, foi estimado um ponto de equilíbrio aproximado de ROAS de 3,45 e ACOS de 28,95%. Nenhum dos períodos analisados atingiu essas referências, embora o período entre 30/08 e 08/09 tenha apresentado a maior aproximação, com ROAS de 2,95 e ACOS de 33,93%.

Essas referências devem ser interpretadas como estimativas, pois utilizam a margem geral da operação e não uma margem específica das vendas atribuídas aos anúncios.


### 2.3 Faturamento e Volume de Pedidos

Abril e julho foram os meses de maior desempenho em volume de pedidos e faturamento. Em abril foram registrados 31 pedidos, totalizando R$ 1.587,46, enquanto julho apresentou 25 pedidos e faturamento de R$ 1.295,27.

A análise mostra que os períodos com maior quantidade de pedidos também apresentaram maior faturamento, indicando que o volume de vendas teve forte relação com o crescimento da receita.


### 2.4 Comportamento do Ticket Médio

O ticket médio não apresentou grandes variações ao longo dos meses, permanecendo na maior parte do período entre R$ 49 e R$ 53. Março foi a principal exceção, apresentando o maior ticket médio, de aproximadamente R$ 66,00.

Porém, março não foi o mês com maior número de pedidos nem maior faturamento, indicando que, no período analisado, o crescimento do faturamento esteve mais relacionado ao volume de vendas do que ao aumento do ticket médio.


### 2.5 Volume de Vendas x Eficiência dos Ads

Ao analisar os meses de maior faturamento e volume de pedidos, foi possível identificar diferenças na eficiência dos Ads.

Abril apresentou 31 pedidos e o maior faturamento do período, porém registrou ROAS de 1,79 e ACOS de 55,85%. Já julho apresentou 25 pedidos, mas alcançou ROAS de 2,24 e ACOS de 44,63%.

Dessa forma, os dados mostram que um maior volume de vendas e faturamento não representa necessariamente maior eficiência do investimento em publicidade.


### 2.6 Melhor Período de Eficiência dos Ads

Ao comparar os períodos de Ads, foi possível identificar uma diferença significativa de eficiência. Entre 01/08 e 29/08 foram investidos R$ 365,25, gerando 12 conversões, com ROAS de 1,64 e ACOS de 61,00%.

Já entre 30/08 e 08/09, o investimento foi de R$ 101,58, com 6 conversões, ROAS de 2,95 e ACOS de 33,93%.

Mesmo apresentando metade das conversões, o segundo período utilizou um investimento consideravelmente menor e apresentou maior eficiência, reforçando que um maior volume de conversões não significa necessariamente maior eficiência da publicidade.

Essa diferença também pode ser observada no custo por conversão. No primeiro período, o custo médio por conversão foi de aproximadamente R$ 30,44, enquanto no segundo período caiu para aproximadamente R$ 16,93, representando uma redução de cerca de 44%.

Isso demonstra que, no segundo período, foi necessário um investimento significativamente menor para gerar cada conversão.

Entretanto, é importante considerar que o segundo período possui apenas 10 dias, enquanto o primeiro possui 29 dias. Dessa forma, apesar dos indicadores demonstrarem uma melhora relevante na eficiência dos Ads, ainda não é possível afirmar que esse desempenho seria mantido durante um período mais longo.


## 3. Recomendações

### 3.1 Estratégia de Ads

Recomenda-se revisar a estratégia de Ads antes de ampliar novos investimentos, investigando quais fatores estavam presentes nos períodos de maior eficiência, como alterações nas campanhas, descontos, cupons ou outras ações promocionais que possam ter contribuído para o desempenho.

No curto prazo, sugere-se trabalhar com um investimento mais controlado em Ads, realizando testes e acompanhando indicadores como ROAS, ACOS, conversões e custo por conversão.

Caso os testes apresentem melhora na eficiência e os resultados se mantenham de forma consistente ao longo do tempo, o investimento poderá ser ampliado gradualmente, priorizando o crescimento com rentabilidade.


### 3.2 Rentabilidade da Operação

Apesar de a operação apresentar resultado positivo antes dos custos com publicidade, não se recomenda necessariamente interromper completamente os investimentos em Ads, uma vez que os anúncios geraram conversões ao longo do período analisado.

A recomendação é reduzir e controlar temporariamente o investimento, realizando novos testes e acompanhando a relação entre o valor investido e o retorno obtido.

O objetivo deve ser encontrar um nível de investimento em que os Ads contribuam para as vendas sem consumir a rentabilidade da operação.

Após identificar uma melhora consistente nos indicadores de eficiência e na rentabilidade, o investimento poderá ser aumentado gradualmente, sempre acompanhando o impacto dos Ads sobre o resultado final da loja.


### 3.3 Custos da Operação

Além dos gastos com publicidade, recomenda-se revisar os demais custos da operação. Os custos com produto e embalagem representam uma parcela relevante das despesas e podem ser avaliados em busca de oportunidades de redução, como negociação com fornecedores e revisão dos gastos com embalagem, desde que essas alterações não comprometam a qualidade do produto e a experiência do cliente.

Também é importante acompanhar o impacto das taxas da Shopee sobre a rentabilidade, considerando esses valores na formação do preço de venda.

Dessa forma, a empresa pode buscar melhorias na margem não apenas por meio da otimização dos Ads, mas também por uma gestão mais eficiente dos custos da operação.


### 3.4 Acompanhamento dos Indicadores

Recomenda-se acompanhar continuamente os principais indicadores do negócio, especialmente o faturamento total, a evolução dos pedidos, o ROAS, o ACOS e a composição do resultado.

O acompanhamento conjunto desses indicadores permite avaliar o crescimento das vendas, a eficiência dos investimentos em publicidade e o impacto dos custos sobre a rentabilidade.

O ROAS e o ACOS permitem acompanhar o desempenho dos Ads sob diferentes perspectivas, enquanto a composição do resultado demonstra como os custos com produtos, taxas e publicidade impactam o resultado final da operação.

Como indicador complementar, a margem com Ads também pode ser acompanhada para avaliar proporcionalmente a evolução da rentabilidade ao longo dos períodos.


## 4. Conclusão

A análise permitiu identificar que o desempenho financeiro da loja estava abaixo do esperado. Antes dos investimentos em Ads, a operação apresentava resultado positivo, porém, após considerar os custos com publicidade, foi identificado um prejuízo de R$ 849,79, demonstrando que o investimento em Ads estava elevado em relação ao retorno e à margem disponível na operação.

Apesar de os anúncios terem gerado conversões, a eficiência apresentou oscilações significativas ao longo dos períodos analisados. Dessa forma, a principal recomendação é trabalhar inicialmente com um investimento mais controlado em publicidade e investigar os fatores presentes nos períodos de maior eficiência, como possíveis alterações nas campanhas, descontos, cupons ou outras ações comerciais.

A análise também demonstrou a importância de avaliar o desempenho da operação de forma integrada, considerando não apenas o faturamento e o volume de vendas, mas também os custos dos produtos, taxas da plataforma, investimentos em publicidade e indicadores de eficiência.

A partir de novos testes e do acompanhamento contínuo de indicadores como faturamento, pedidos, ROAS, ACOS, margem e composição do resultado, será possível avaliar a evolução da rentabilidade e, caso os resultados apresentem uma melhora consistente, ampliar gradualmente os investimentos em Ads de forma mais sustentável.