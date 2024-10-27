extends Node

# 전투 라이프사이클
enum BattleState {
  INITIALIZE, # 초기화
  BEGIN_WAVE, # 웨이브 개막
  BEGIN_TURN, # 턴 개막
  IDLE, # 대기
  BEGIN_BATTLE, # 전투 개막
  END_BATTLE, # 전투 종료
  END_TURN, # 턴 종료
  END_WAVE, # 웨이브 종료
  VICTORY, # 승리
  DEFEAT # 패배
}

var state: BattleState

func _init_player_group() -> void:
  pass

func _init_enemy_group() -> void:
  pass

func initialize() -> void:
  state = BattleState.INITIALIZE

func _ready() -> void:
  initialize()
