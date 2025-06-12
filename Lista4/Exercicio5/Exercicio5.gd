# Questão 5 – Ranking de Pontuações
# Arquivo: RankingScene.gd
extends MarginContainer

@onready var nome_input   = $NomeEntrada       # LineEdit
@onready var pts_input    = $PontosEntrada     # LineEdit
@onready var btn_registrar= $RegistrarBtn      # Button
@onready var list_rank    = $RankingList       # ItemList

var ranking = Ranking.new()

func _on_registrar():
	var nome = nome_input.text
	var pts = int(pts_input.text)
	ranking.adicionar_entry(ScoreEntry.new(nome, pts))
	_refresh_ranking()

func _refresh_ranking():
	list_rank.clear()
	for e in ranking.get_top(5):
		list_rank.add_item("%s — %d pts" % [e.nome, e.pontos])


class ScoreEntry:
	var nome: String
	var pontos: int

	func _init(n: String, p: int) -> void:
		nome = n
		pontos = p

class Ranking:
	var _entries = []

	func adicionar_entry(entry: ScoreEntry) -> void:
		# TODO: adicionar na lista
		pass

	func get_top(n: int) -> Array:
		# TODO: ordenar e retornar top n
		return []

	func get_all() -> Array:
		# TODO: retornar cópia de _entries
		return []
