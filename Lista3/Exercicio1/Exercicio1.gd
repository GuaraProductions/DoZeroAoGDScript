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
	return Retangulo.new(5,3)

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
		var area : String = Numeros.formatar(calcular_area())
		var perimetro : String = Numeros.formatar(calcular_perimetro())
		var altura : String = Numeros.formatar(_altura)
		var base : String = Numeros.formatar(_base)
		
		return "[Triangulo]:\nAltura = %s\nBase = %s\nÁrea = %s\nPerímetro = %s" % \
		[altura, base, area, perimetro]
