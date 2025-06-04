extends MarginContainer

#region JahImplementado

@onready var entrada_base = %BaseEntrada
@onready var entrada_altura = %AlturaEntrada
@onready var resultado = %Resultado

func _eh_valido(texto: String) -> bool:
	return texto.is_valid_float()

func calcular():
	var texto_base = entrada_base.text
	var texto_altura = entrada_altura.text

	if not _eh_valido(texto_base) or not _eh_valido(texto_altura):
		resultado.text = "Erro! Valores inválidos."
		resultado.modulate = Color.RED
		return

	var b = float(texto_base)
	var h = float(texto_altura)
	
	var r : Retangulo = criar_retangulo(b,h)

	resultado.modulate = Color.WHITE
	resultado.text = str(r)

#endregion

func criar_retangulo(base: float, altura: float) -> Retangulo:
	#TODO Criar instancia da classe Retangulo e configurar base e altura
	return null

class Retangulo:
	var _base: float
	var _altura: float

	func _init(p_base: float, p_altura: float) -> void:
		# TODO
		pass

	func set_base(valor: float) -> void:
		# TODO
		pass

	func set_altura(valor: float) -> void:
		# TODO
		pass

	func calcular_area() -> float:
		# TODO
		return 0.0

	func calcular_perimetro() -> float:
		# TODO
		return 0.0
		
	func _to_string() -> String:
		# TODO
		return "[Triangulo]:\nAltura = %f\nBase = %f\nÁrea = %s\nPerímetro = %f" % \
		[_altura, _base, str(calcular_area()).pad_decimals(2), calcular_perimetro()]
