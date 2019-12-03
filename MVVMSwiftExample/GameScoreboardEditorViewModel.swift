//
//  GameScoreboardEditorViewModel.swift
//  MVVMSwiftExample
//
//  Created by Grace Njoroge on 02/12/2019.
//  Copyright © 2019 Toptal. All rights reserved.
//

import Foundation

protocol GameScoreboardEditorViewModel {
  var homeTeam: String {get}
  var awayTeam: String {get}
  var time: Dynamic<String> {get}
  var score: Dynamic<String> {get}
  var isFinished: Dynamic<Bool> {get}
  
  var isPaused: Dynamic<Bool> {get}
  func togglePause()
  
  var homePlayers: [PlayerScoreboardMoveEditorViewModel] {get}
  var awayPlayers: [PlayerScoreboardMoveEditorViewModel] {get}
}
