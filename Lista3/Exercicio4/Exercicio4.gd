extends MarginContainer

#region JahImplementado

@onready var adicionar_saldo_field: LineEdit = %AdicionarSaldoField
@onready var sacar_dinheiro_field: LineEdit = %SacarDinheiroField
@onready var mudar_nome_field: LineEdit = %MudarNomeField
@onready var saldo_field: Label = %SaldoField
@onready var resultado: Label = %Resultado
@onready var informacoes: Label = %Informacoes

var cofre : Cofrinho

func _ready() -> void:
	cofre = Cofrinho.new()

func _eh_valido(texto: String) -> bool:
	return texto.is_valid_float()

func adicionar():
	var texto = adicionar_saldo_field.text
	if not _eh_valido(texto):
		resultado.text = "Erro: Valor inválido."
		resultado.modulate = Color.RED
		return
	cofre.adicionar(float(texto))
	resultado.text = \
	 "Dinheiro adicionado com sucesso!:\nSaldo atualizado: %s" % \
	 [str(cofre.get_saldo()).pad_decimals(2)]

func sacar():
	var texto = sacar_dinheiro_field.text
	if not _eh_valido(texto):
		resultado.text = "Erro: Valor inválido."
		resultado.modulate = Color.RED
		return
	var ok = cofre.sacar(float(texto))
	resultado.text = ok if ok else \
	 "Dinheiro sacado com sucesso!\nSaldo atualizado: %s" % [str(cofre.get_saldo()).pad_decimals(2)]

func mudar_nome() -> void:
	var texto = mudar_nome_field.text
	if not _eh_valido(texto):
		resultado.text = "Erro: Valor inválido."
		resultado.modulate = Color.RED
		return
	var ok = cofre.sacar(float(texto))
	resultado.text = ok if ok else \
	 "Nome atualizado! Novo nome: %s"

func atualizar_informacoes_da_conta() -> void:
	informacoes.text = str(cofre)

class Cofrinho:
	
	#TODO
	var saldo: float = 0.0
	var nome: String = ""

	func _init(nome: String = "Usuario", 
			saldo: float = 0.0) -> void:
		self.nome = nome
		self.saldo = saldo
		
	func adicionar(valor: float):
		# TODO
		pass

	func sacar(valor: float) -> bool:
		# TODO
		return false

	func set_saldo(novo_saldo: float) -> float:
		# TODO
		return 0.0

	func get_saldo() -> float:
		# TODO
		return 0.0
		
	func get_nome() -> String:
		# TODO
		return ""
		
	func set_nome(novo_nome: String) -> void:
		# TODO
		pass

	func _to_string() -> String:
		return "Nome: %s\nSaldo: R$%s" % [self.nome, str(self.saldo).pad_decimals(2)]
