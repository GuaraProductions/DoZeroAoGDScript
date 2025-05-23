extends Node

#region JahImplementado

@onready var entrada = $CampoNumero
@onready var resultado = $LabelResultado

func _eh_numero_valido(texto: String) -> bool:
	return texto.is_valid_int()

func calcular():
	var texto = entrada.text
	
	if not _eh_numero_valido(texto):
		resultado.text = "Erro! A entrada de texto é inválida!\nColoque um número inteiro!"
		resultado.modulate = Color.RED
		return

	var n = int(texto)
	var tabuada = gerar_tabuada(n)
	resultado.modulate = Color.WHITE
	resultado.text = tabuada

#endregion

func gerar_tabuada(n: int) -> String:
	# TODO: Retorne uma string com a tabuada de n (1 a 10)
	return ""
