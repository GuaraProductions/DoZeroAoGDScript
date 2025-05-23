### 📘 **Lista 2 - Exercícios em GDScript com Interface e Repetição**

---

#### **1️⃣ Somador com Repetição**

**Cena:** Campo para número inteiro positivo `N`, botão "Somar", rótulo para o resultado.

**Tarefa:** Use um laço `for` para somar os números de 1 até N (inclusive) e mostrar o total.

> **Dica 1:** Use `for i in range(1, N + 1):` para percorrer de 1 até N.
>
> **Dica 2:** Crie uma variável acumuladora (`var soma = 0`) e vá somando os valores dentro do loop.

---

#### **2️⃣ Tabuada de um Número**

**Cena:** Campo para número inteiro `N`, botão "Mostrar Tabuada", rótulo que mostra os resultados (de 1×N até 10×N).

**Tarefa:** Use um laço `for` para construir e exibir a tabuada de N até 10.

> **Dica 1:** Use `for i in range(1, 11):` para gerar de 1 a 10.
>
> **Dica 2:** Em cada iteração, calcule `i * N` e concatene a string com `"{} x {} = {}\n".format(i, N, i * N)`.

---

#### **3️⃣ Contador de Múltiplos de 3**

**Cena:** Campo para um número `N`, botão "Contar", rótulo que mostra quantos múltiplos de 3 existem de 1 até N.

**Tarefa:** Conte quantos números entre 1 e N são múltiplos de 3 e exiba o total.

> **Dica 1:** Use `for i in range(1, N + 1):` e verifique `if i % 3 == 0`.
>
> **Dica 2:** Use uma variável `contador += 1` sempre que encontrar um múltiplo.

---

#### **4️⃣ Fatorial de um Número**

**Cena:** Campo para número inteiro positivo `N`, botão "Calcular Fatorial", rótulo para o resultado.

**Tarefa:** Calcule o fatorial de `N` usando um laço `while` ou `for`.

> **Dica 1:** O fatorial é o produto de todos os inteiros positivos até N: `N * (N-1) * ... * 1`.
>
> **Dica 2:** Use `for i in range(1, N + 1): resultado *= i`.

---

#### **5️⃣ Soma dos Pares entre 1 e N**

**Cena:** Campo para número inteiro `N`, botão "Somar Pares", rótulo que mostra a soma dos números pares entre 1 e N.

**Tarefa:** Some apenas os números pares entre 1 e N e exiba o total.

> **Dica 1:** Dentro do loop, use `if i % 2 == 0` para verificar se o número é par.
>
> **Dica 2:** Some os valores pares em uma variável `soma` inicializada com 0.

---
