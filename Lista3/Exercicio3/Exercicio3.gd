# 3️⃣ Exercício “Carro com Composição de Motor”
extends MarginContainer

@onready var entrada_potencia = %Entrada
@onready var btn_ligar = %Calcular
@onready var msg_licar_carro = %MsgLigarCarro
@onready var potencia_carro = %PotenciaDoCarro

func _on_ligar_pressed() -> void:
	var texto = entrada_potencia.text
	if not texto.is_valid_integer():
		msg_licar_carro.text = "Erro! Potência inválida."
		msg_licar_carro.modulate = Color.RED
		return

	var p = int(texto)
	
	#TODO
	#var carro: Carro = Carro.new(p)
	#var msg_ligar_carro = carro.ligar_carro()
	#var potencia = carro.acessar_potencia()
	
	msg_licar_carro.modulate = Color.WHITE
	#msg_licar_carro.text = msg_ligar_carro

	#potencia_carro.text = "Potencia do carro: %s" % [Numeros.formatar(potencia)]
	potencia_carro.modulate = Color.WHITE
# --- Definições das classes ---

class Motor:
	var potencia: int
	#TODO: Complete o resto da classe
	

class Carro:
	var motor: Motor
	#TODO: Complete o resto da classe
