# Questão 3 – Player e Arma
# Arquivo: PlayerArmaScene.gd
extends MarginContainer

@onready var dano_input   = $DanoEntrada    # LineEdit
@onready var tipo_input   = $TipoEntrada    # LineEdit
@onready var btn_change   = $MudarArmaBtn   # Button
@onready var btn_attack   = $AtacarBtn      # Button
@onready var label_status = $StatusLabel    # Label

var jogador = Jogador.new(Arma.new(0, ""))

func _on_change_weapon():
	var dano = int(dano_input.text)
	var tipo = tipo_input.text
	jogador.arma = Arma.new(dano, tipo)

func _on_attack():
	var resultado = jogador.arma.disparar()
	var attrs = jogador.get_atributos()
	label_status.text = "%s\n%s" % [resultado, str(attrs)]


class Arma:
	var dano: int
	var tipo: String

	func _init(d: int, t: String) -> void:
		dano = d
		tipo = t

	func disparar() -> String:
		# TODO: retornar "Tiro de [tipo]! Dano: [dano]"
		return ""

class Jogador:
	var arma: Arma
	var _atributos = {
		"vida": 100,
		"mana": 50
	}

	func _init(a: Arma) -> void:
		arma = a

	func get_atributos() -> Dictionary:
		# TODO: retornar cópia de _atributos
		return {}

	func set_atributo(chave: String, valor) -> void:
		# TODO: atualizar atributo em _atributos
		pass
