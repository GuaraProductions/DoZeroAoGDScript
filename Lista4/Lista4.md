### 📘 **Lista 4 – POO com GDScript, Listas e Dicionários para Jogos**

**Objetivo:**  
A cena de cada exercício já virá pronta no Godot Engine com todos os nós de interface (`Button`, `LineEdit`, `Label`, `ItemList`, etc.). O aluno deverá abrir o script associado e **completar** somente os métodos e `# TODO` indicados, integrando POO, Listas e Dicionários em contextos de jogos.

---

#### **1️⃣ Inventário – Encapsulamento e Dicionários**  
> **Cena pronta:** contém dois `LineEdit` (`%ItemEntrada`, `%QtdEntrada`), botões “Adicionar” e “Remover” e um `Label` `%InventarioLabel`.

A classe `Inventario` já vem com o dicionário privado `_itens = {}` instanciado. Seu trabalho é:

- Implementar `adicionar_item(nome: String, qtd: int)` → atualiza `_itens[nome] += qtd` (ou cria a chave).  
- Implementar `remover_item(nome: String, qtd: int)` → subtrai se `_itens[nome] >= qtd`; retorna `true`/`false`.  
- Implementar `get_itens(): Dictionary` → retorna uma cópia de `_itens`.  

No `_on_botao_adicionar_pressed()` e `_on_botao_remover_pressed()`, use esses métodos e faça:
```gdscript
inventario_label.text = str(inventario.get_itens())
```

<details><summary>Dica 1</summary>Use `Dictionary.duplicate()` em `get_itens()`.</details>  
<details><summary>Dica 2</summary>Cheque `if nome in _itens` antes de remover.</details>

---

#### **2️⃣ Inimigos – Herança, Polimorfismo e Listas**  
> **Cena pronta:** um `Button` `%AtacarTodosBtn` e um `TextEdit` `%LogAtaques`.

- Complete a classe base `Inimigo` com método `atacar()`.  
- Subclasses `Goblin`, `Esqueleto` e `Dragao` sobrescrevem `atacar()` com falas específicas.  
- No método conectado a `%AtacarTodosBtn.pressed`, itere sobre:
  ```gdscript
  var onda = [ Goblin.new(), Esqueleto.new(), Dragao.new() ]
  ```
  e concatene cada `inimigo.atacar()` em `log_ataques.text`.

<details><summary>Dica 1</summary>Use `for inimigo in onda:` para polimorfismo.</details>  
<details><summary>Dica 2</summary>Armazene respostas em um `Array` antes de `join("\n")`.</details>

---

#### **3️⃣ Player e Arma – Composição e Dicionários de Atributos**  
> **Cena pronta:** dois `LineEdit` (`%DanoEntrada`, `%TipoEntrada`), botões “Mudar Arma” `%MudarArmaBtn`, “Atacar” `%AtacarBtn`, e um `Label` `%StatusLabel`.

- Complete `class Arma` com `dano` e `tipo` e método `disparar()`.  
- Complete `class Jogador` que recebe uma `Arma` no `_init()` e mantém `_atributos: Dictionary = { "vida": 100, "mana": 50 }`.  
- Implemente getters e setters para `_atributos`.  
- Em `%MudarArmaBtn.pressed`, instancie nova `Arma` e atribua a `jogador.arma`.  
- Em `%AtacarBtn.pressed`, chame `jogador.arma.disparar()` e exiba em `%StatusLabel` junto com `str(jogador.get_atributos())`.

<details><summary>Dica 1</summary>Use `jogador.set_atributo("mana", novo_valor)` para atualizar.</details>  
<details><summary>Dica 2</summary>Monte a string final com `"%s\n%s" % [disparo, str(atributos)]`.</details>

---

#### **4️⃣ Registro de Missões – Listas e Encapsulamento**  
> **Cena pronta:** um `LineEdit` `%MissaoEntrada`, dois botões “Nova Missão” `%AddMissaoBtn`, “Concluir” `%CompletarBtn`, outro `LineEdit` `%IndiceEntrada` e um `ItemList` `%MissaoList`.

- Complete `class QuestLog` com lista privada `_missoes: Array = []`.  
- Cada missão é um `Dictionary { "titulo": String, "concluida": bool }`.  
- Implemente:
  - `adicionar_missao(titulo: String)` → `push_back({ "titulo": titulo, "concluida": false })`  
  - `completar_missao(indice: int)` → marca `concluida = true` se índice válido  
  - `get_missoes(): Array` → retorna cópia de `_missoes`  

Na UI, ao adicionar ou concluir, faça `missao_list.clear()` e depois:
```gdscript
for m in questlog.get_missoes():
	missao_list.add_item("%s — %s" % [m["titulo"], m["concluida"] ? "OK" : "Pendente"])
```

<details><summary>Dica 1</summary>Valide `0 <= indice < _missoes.size()` antes de concluir.</details>  
<details><summary>Dica 2</summary>Use `Array.duplicate()` se precisar copiar a lista.</details>

---

#### **5️⃣ Ranking de Pontuações – Composição, Listas e Dicionários**  
> **Cena pronta:** dois `LineEdit` (`%NomeEntrada`, `%PontosEntrada`), botão “Registrar” `%RegistrarBtn` e um `ItemList` `%RankingList`.

- Crie `class ScoreEntry` com `nome: String` e `pontos: int`.  
- Crie `class Ranking` com lista privada `_entries: Array = []`.  
  - `adicionar_entry(entry: ScoreEntry)` → adiciona na lista.  
  - `get_top(n: int): Array` → retorna os `n` maiores por `pontos` (ordenar decrescente).  
  - `get_all(): Array` → retorna cópia de `_entries`.  
- No script da cena:
  - Em `%RegistrarBtn.pressed`, crie `ScoreEntry` de `%NomeEntrada.text` e `int(%PontosEntrada.text)`, chame `ranking.adicionar_entry()`.  
  - Atualize `%RankingList` com:
	```gdscript
	ranking_list.clear()
	for e in ranking.get_top(5):
		ranking_list.add_item("%s — %d pts" % [e.nome, e.pontos])
	```

<details><summary>Dica 1</summary>Use `entries.sort_custom()` ou `entries.sort()` com função anônima para ordenar por `pontos`.</details>  
<details><summary>Dica 2</summary>Retorne `entries.duplicate()` em `get_all()` para não expor a lista interna.</details>
