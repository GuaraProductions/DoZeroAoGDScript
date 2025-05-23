### 📘 **Lista 2 - Exercícios em GDScript com Interface e Repetição**

---

#### **1️⃣ Somador com Repetição**

**Cena:** Campo para número inteiro positivo `N`, botão "Somar", rótulo para o resultado.

**Tarefa:** Use um laço `for` para somar os números de 1 até N (inclusive) e mostrar o total.

<details> <summary>Dica 1</b></font></summary> Use `for i in range(1, N + 1):` para percorrer de 1 até N. </details>
<details> <summary>Dica 2</b></font></summary> Crie uma variável acumuladora (`var soma = 0`) e vá somando os valores dentro do loop. </details>
<details> <summary>Dica 3</b></font></summary> Vá somando de "i" com "soma" dentro do loop. </details>

---

#### **2️⃣ Tabuada de um Número**

**Cena:** Campo para número inteiro `N`, botão "Mostrar Tabuada", rótulo que mostra os resultados (de 1×N até 10×N).

**Tarefa:** Use um laço `for` para construir e exibir a tabuada de N até 10.

Obs.: A função em si não retorna nada (já que é do tipo void), você precisa usar a função `mostrar_tabuada` para mostrar o resultado

<details> <summary>Dica 1</b></font></summary> Use `for i in range(1, 11):` para gerar de 1 a 10 </details>
<details> <summary>Dica 2</b></font></summary> Em cada iteração, calcule `i * N` </details>

---

#### **3️⃣ Contador de Múltiplos de 3**

**Cena:** Campo para um número `N`, botão "Contar", rótulo que mostra quantos múltiplos de 3 existem de 1 até N.

**Tarefa:** Conte quantos números entre 1 e N são múltiplos de 3 e exiba o total.

<details> <summary>Dica 1</b></font></summary> Use `for i in range(1, N + 1):` </details>
<details> <summary>Dica 2</b></font></summary> Verifique `if i % 3 == 0` </details>
<details> <summary>Dica 3</b></font></summary> Use uma variável e uma estrutura condicional sempre que encontrar um múltiplo </details>

---

#### **4️⃣ Fatorial de um Número**

**Cena:** Campo para número inteiro positivo `N`, botão "Calcular Fatorial", rótulo para o resultado.

**Tarefa:** Calcule o fatorial de `N` usando um laço `while` ou `for`.

<details> <summary>Dica 1</b></font></summary> O fatorial é o produto de todos os inteiros positivos até N: `N * (N-1) * ... * 1` </details>
<details> <summary>Dica 2</b></font></summary> Use `for i in range(1, N + 1): resultado *= i` </details>
---

#### **5️⃣ Soma dos Pares entre 1 e N**

**Cena:** Campo para número inteiro `N`, botão "Somar Pares", rótulo que mostra a soma dos números pares entre 1 e N.

**Tarefa:** Some apenas os números pares entre 1 e N e exiba o total.

<details> <summary>Dica 1</b></font></summary> Dentro do loop, use `if i % 2 == 0` para verificar se o número é par </details>
<details> <summary>Dica 2</b></font></summary> Some os valores pares em uma variável `soma` inicializada com 0 </details>

---
