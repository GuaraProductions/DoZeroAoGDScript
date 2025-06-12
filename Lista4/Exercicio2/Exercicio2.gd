# Questão 2 – Inimigos
# Arquivo: InimigosScene.gd
extends MarginContainer

@onready var btn_attack_all = $AtacarTodosBtn  # Button
@onready var text_log       = $LogAtaques      # TextEdit

func _on_attack_all():
	var onda = [
		Goblin.new(),
		Esqueleto.new(),
		Dragao.new()
	]
	var resultados = []
	for inimigo in onda:
		resultados.append(inimigo.atacar())
	text_log.text = "\n".join(resultados)


class Inimigo:
	func atacar() -> String:
		# TODO: implementar fala genérica ou abstrata
		return ""

class Goblin extends Inimigo:
	func atacar() -> String:
		# TODO: retornar "Goblin arremessa pedra!"
		return ""

class Esqueleto extends Inimigo:
	func atacar() -> String:
		# TODO: retornar "Esqueleto golpeia com espada!"
		return ""

class Dragao extends Inimigo:
	func atacar() -> String:
		# TODO: retornar "Dragão solta fogo!"
		return ""
