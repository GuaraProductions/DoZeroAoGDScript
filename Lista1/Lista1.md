#### **1️⃣ Questão 1 - Conversor de Temperatura**

Complete uma função que converta uma temperatura em Celsius para Fahrenheit.  
A fórmula de conversão é:

$$
F=(C×1.8)+32
$$
<details> <summary>Dica 1</b></font></summary> Lembre-se de utilizar a fórmula corretamente. Multiplique o valor em Celsius por 1.8 e depois adicione 32. </details>

---

#### **2️⃣ Questão 2 - Calculadora de Juros Simples**

Escreva uma função que receba três informações do usuário:

- Capital inicial (em dinheiro)
	
- Taxa de juros (em percentual)
	
- Tempo (em meses)
	

Calcule o montante (M) final usando a fórmula de Juros Simples:

$$
M=C×(1+(i×t))
$$

Onde:

- C é o capital
	
- i é a taxa de juros
	
- t é o tempo
	

<details> <summary>Dica 1</b></font></summary>A taxa de juros precisa ser convertida para a forma decimal. Por exemplo, 5% deve ser convertido para 0.05. </details>


<details> <summary>Dica 2</b></font></summary>A fórmula precisa ser aplicada corretamente para o cálculo do montante. Faça o cálculo do produto e some ao capital. </details>

---
####  3️⃣ **Questão 3 - Calculadora de Média e Situação Escolar**

Escreva um script que receba as 3 notas de um aluno e calcule a média final.  
Com a média em mãos, retorne da função:

- `"Aprovado"` se a média for maior ou igual a 7;
	
- `"Recuperação"` se a média estiver entre 5 e 7 (exclusivo);
	
- `"Reprovado"` se a média for menor que 5.


<details> <summary>Dica 1</b></font></summary>Para calcular a média, some todas as notas e divida pelo número de notas. </details>


<details> <summary>Dica 2</b></font></summary>Utilize estruturas condicionais (`if`, `elif`, `else`) para verificar a situação do aluno.</details>

---

#### **4️⃣ Questão 4 - Calculadora de Desconto em Compras**

Calcule e exiba:

- O valor do desconto;
	
- O valor final da compra após aplicar o desconto.
	
- Se o valor final for superior a R$ 500,00, pois então o cliente irá ganhar um brinde.


<details> <summary>Dica 1</b></font></summary>Para calcular o desconto, multiplique o valor pelo percentual e divida por 100.</details>


<details> <summary>Dica 2</b></font></summary>Subtraia o desconto do valor total para obter o valor final.</details>


<details> <summary>Dica 3</b></font></summary>Verifique se o valor final é maior que 500 com uma estrutura condicional.</details>

---

#### **5️⃣Questão 5 - Verificação de Ano Bissexto**

Complete uma função que receba um ano do usuário e verifique se ele é bissexto ou não.  
Para um ano ser bissexto, ele deve:

- Ser divisível por 4;
	
- Não ser divisível por 100, exceto se também for divisível por 400.
	
<details> <summary>Dica 1</b></font></summary>Use o operador `%` para verificar se um número é divisível por outro.</details>
