extends MarginContainer

#region JahImplementado

@onready var entrada = %Entrada
@onready var resultado = %Resultado

@onready var entrada = %EntradaValor
@onready var resultado = %Resultado
var cofre = Cofrinho.new()

func _eh_valido(texto: String) -> bool:
	return texto.is_valid_float()

func adicionar():
	var texto = entrada.text
	if not _eh_valido(texto):
		resultado.text = "Erro: Valor inválido."
		resultado.modulate = Color.RED
		return
	cofre.adicionar(float(texto))
	resultado.text = "Saldo atual: %.2f" % cofre.get_saldo()

func sacar():
	var texto = entrada.text
	if not _eh_valido(texto):
		resultado.text = "Erro: Valor inválido."
		resultado.modulate = Color.RED
		return
	var ok = cofre.sacar(float(texto))
	resultado.text = ok if ok else "Saldo insuficiente."

class Cofrinho
	var _saldo: float = 0.0

	func adicionar(valor: float):
		# TODO
		pass

	func sacar(valor: float) -> bool:
		# TODO
		return false

	func get_saldo() -> float:
		# TODO
		return 0.0
