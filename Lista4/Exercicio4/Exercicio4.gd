# Questão 4 – Registro de Missões
# Arquivo: QuestLogScene.gd
extends MarginContainer

@onready var missao_input  = $MissaoEntrada   # LineEdit
@onready var idx_input     = $IndiceEntrada   # LineEdit
@onready var btn_add       = $AddMissaoBtn    # Button
@onready var btn_complete  = $CompletarBtn    # Button
@onready var list_missoes  = $MissaoList      # ItemList

var questlog = QuestLog.new()

func _on_add_missao():
	questlog.adicionar_missao(missao_input.text)
	_refresh_list()

func _on_complete_missao():
	var idx = int(idx_input.text)
	questlog.completar_missao(idx)
	_refresh_list()

func _refresh_list():
	list_missoes.clear()
	for m in questlog.get_missoes():
		var status = "Ok" if m["concluida"] else "Pendente"
		list_missoes.add_item("%s — %s" % [m["titulo"], status])


class QuestLog:
	var _missoes = []

	func adicionar_missao(titulo: String) -> void:
		# TODO: push_back novo dicionário
		pass

	func completar_missao(indice: int) -> void:
		# TODO: validar índice e marcar "concluida"
		pass

	func get_missoes() -> Array:
		# TODO: retornar cópia de _missoes
		return []
