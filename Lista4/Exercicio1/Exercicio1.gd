extends Control
class_name Lista5Exercicio1

#region JahImplementado

@onready var lista_de_items: ItemList = %ListaDeItems
@onready var icone: TextureRect = %Icone
@onready var descricao: Label = %Descricao
@onready var nome: Label = %Nome
@onready var adicionar_item: Window = $AdicionarItem
@onready var remover_item: Window = $RemoverItem

var inventario : Inventario

var item_selecionado_id : int = -1

func _ready():
	inventario = Inventario.new()
	adicionar_item.visible = false
	remover_item.visible = false
	
	remover_item.inventario = inventario

func _on_add_pressed():
	
	adicionar_item.popup_centered()
	
	var resultado = await adicionar_item.close_requested
	
	adicionar_item.hide()
	
	if not resultado:
		return
		
	var nome: String = resultado[0]
	var descricao: String = resultado[1]
	var textura: Texture = resultado[2]
	var quantidade: int = resultado[3]
	
	var id : int = inventario.adicionar_item(nome, descricao, textura, quantidade)
	
	_adicionar_item_na_lista(id)
	
func _adicionar_item_na_lista(id: int) -> void:
	var item : Dictionary = inventario.get_item(id)
	
	if item.is_empty():
		OS.alert("O item que você quer adicionar é invalido!\nConfere sua implementação do Inventário", "Erro!")
		return
	
	var nome_com_quant = inventario.get_item_nome_com_quantidade(id)
	
	if lista_de_items.get_item_text(id).is_empty():
		
		lista_de_items.add_item(nome_com_quant, item.textura)
	else:

		lista_de_items.set_item_text(id, nome_com_quant)
	
func _on_remove_pressed():
	
	if inventario.vazio():
		OS.alert("O inventário está vazio!", "Erro!")
		return
	
	remover_item.popup_centered()

	var resultado = await remover_item.close_requested
	
	remover_item.hide()
	
	if not resultado:
		return
		
	var id: int = resultado[0]
	var quantidade: int = resultado[1]
	
	inventario.remover_item(id, quantidade)
	
	_atualizar_lista_de_itens(id)
	
func _atualizar_lista_de_itens(id: int) -> void:
	var item : Dictionary = inventario.get_item(id)
	
	if item.is_empty():
		lista_de_items.remove_item(id)
		if item_selecionado_id == id:
			icone.texture = null
			descricao.text = ""
			nome.text = ""
		return
	
	var nome_com_quant = inventario.get_item_nome_com_quantidade(id)
	
	lista_de_items.set_item_text(id, nome_com_quant)

func _on_lista_de_items_item_selected(index: int) -> void:
	var item = inventario.get_item(index)
	item_selecionado_id = index
	
	icone.texture = item.textura
	descricao.text = item.descricao
	nome.text = item.nome

#endregion

class Item:
	var id : int
	var quantidade : int
	var nome : String
	var descricao : String
	var textura : Texture
	
	func _init(p_id: int = -1, 
			   p_quantidade: int = 0, 
			   p_nome: String = "", 
			   p_descricao: String = "",
			   p_textura: Texture = null) -> void:
		id = p_id
		quantidade = p_quantidade
		nome = p_nome
		descricao = p_descricao
		textura = p_textura
		
	func to_dict() -> Dictionary:
# Cria um Dictionary com propriedades básicas do item
		return {
			"id": id,
			"quantidade": quantidade,
			"nome": nome,
			"descricao": descricao,
			"textura": textura
		}  # Uso de literal Dictionary em GDScript

class Inventario:

	const LIMITE_ITEMS: int = 50
	var _itens: Dictionary = {}

	func _init() -> void:
		_itens = {}

	func vazio() -> bool:
		# Verifica se o dicionário está vazio
		return _itens.is_empty()  # Dictionary.empty() retorna true se não houver pares

	func adicionar_item(nome: String,
		descricao: String,
		textura: Texture = null,
		quantidade: int = 1) -> int:
		# Impede ultrapassar o limite de itens
		if _itens.size() >= LIMITE_ITEMS:  # Dictionary.size() retorna número de pares
			return -1
		# Se já existe, apenas aumenta a quantidade
		if _itens.has(nome):  # Dictionary.has() verifica existência de chave
			var item = _itens[nome]
			item.quantidade += quantidade
			return item.id
		# Caso novo item, gera ID e adiciona
		var new_id = _itens.size()
		var item = Item.new(new_id, quantidade, nome, descricao, textura)
		_itens[nome] = item
		return new_id

	func remover_item(id: int, quantidade: int) -> bool:
		# Percorre as chaves em busca do item com matching ID
		for key in _itens.keys():  # Dictionary.keys() retorna Array de chaves
			var item = _itens[key]
			if item.id == id:
				item.quantidade -= quantidade
				if item.quantidade <= 0:
					_itens.erase(key)  # Dictionary.erase() remove a chave
				return true
		return false

	func get_item(id: int) -> Dictionary:
		# Retorna a representação em Dictionary do item
		for item in _itens.values():  # Dictionary.values() retorna Array de valores
			if item.id == id:
				return item.to_dict()
		return {}

	func get_item_nome(id: int) -> String:
		# Pega apenas o campo 'nome'
		return get_item(id).get("nome", "")  # Dictionary.get() busca valor com default

	func get_item_nome_com_quantidade(id: int) -> String:
		var d = get_item(id)
		if d.is_empty():
			return ""
		return "%s (%d)" % [d["nome"], d["quantidade"]]

	func get_item_descricao(id: int) -> String:
		# Retorna o campo 'descricao'
		return get_item(id).get("descricao", "")

	func get_item_quantidade(id: int) -> int:
		# Retorna o campo 'quantidade'
		return get_item(id).get("quantidade", 0)

	func get_itens() -> Dictionary:
		# Retorna uma cópia profunda para evitar referências indesejadas
		return _itens.duplicate(true)  # duplicate(true) faz cópia profunda de arrays e dicionários internos
