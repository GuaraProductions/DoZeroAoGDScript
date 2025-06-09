# 3️⃣ Exercício “Carro com Composição de Motor”
extends MarginContainer

@onready var entrada_potencia = %Entrada
@onready var btn_ligar = %Calcular
@onready var resultado = %MsgLigarCarro
@onready var resultado2 = %PotenciaDoCarro

func _on_ligar_pressed() -> void:
	var texto = entrada_potencia.text
	if not texto.is_valid_integer():
		resultado.text = "Erro! Potência inválida."
		resultado.modulate = Color.RED
		return

	var p = int(texto)
	
	#TODO
	#var carro: Carro = Carro.new(p)
	#var msg_ligar_carro = carro.ligar_carro()
	#var potencia = carro.acessar_potencia()
	
	resultado.modulate = Color.WHITE
	#resultado.text = msg_ligar_carro

	#resultado2.text += potencia
	resultado2.modulate = Color.WHITE
# --- Definições das classes ---

class Motor:
	var potencia: int
	#TODO: Complete o resto da classe
	

class Carro:
	var motor: Motor
	#TODO: Complete o resto da classe
