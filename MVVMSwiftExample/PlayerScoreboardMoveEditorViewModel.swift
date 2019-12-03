//
//  PlayerScoreboardMoveEditorViewModel.swift
//  MVVMSwiftExample
//
//  Created by Grace Njoroge on 03/12/2019.
//  Copyright © 2019 Toptal. All rights reserved.
//

import Foundation

protocol PlayerScoreboardMoveEditorViewModel {
  
  var playerName: String {get}
  
  var onePointMoveCount: Dynamic<String> {get}
  var twoPointMoveCount: Dynamic<String> {get}
  var assistMoveCount: Dynamic<String> {get}
  var reboundMoveCount: Dynamic<String> {get}
  var foulMoveCount: Dynamic<String>{get}
  
  func onePointMove()
  func twoPointsMove()
  func assistMove()
  func reboundMove()
  func foulMove()
}
