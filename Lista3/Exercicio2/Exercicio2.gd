extends MarginContainer

@onready var resultado: Label = $Resultado

func _on_cachorro_pressed() -> void:
	var animal: Animal = Cachorro.new()
	resultado.text = animal.falar()

func _on_gato_pressed() -> void:
	pass #TODO
	#var animal: Animal = Gato.new()
	#resultado.text = animal.falar()

func _on_ovelha_pressed() -> void:
	pass #TODO
	#var animal: Animal = Cavalo.new()
	#resultado.text = animal.falar()

# --- Definições das classes ---

class Animal:
	# Método base (pode ser virtual/abstrato)
	func falar() -> String:
		printerr("Uso errado da classe!")
		return "…"

class Cachorro extends Animal:
	func falar() -> String:
		# TODO: 
		return ""

#TODO: Fazer as outras classes
