//
//  Dynamic.swift
//  MVVMSwiftExample
//
//  Created by Grace Njoroge on 03/12/2019.
//  Copyright © 2019 Toptal. All rights reserved.
//

import Foundation

//Because our data will change we make the ViewModel dynamic

class Dynamic<T> {
  typealias Listener = (T) -> ()
  var listener: Listener?
  
  func bind(_ listener: Listener?) {
    self.listener = listener
  }
  
  func bindAndFire(_ listener: Listener?) {
    self.listener = listener
    listener?(value)
  }
  
  var value: T {
    didSet {
      listener?(value)
    }
  }
  
  init(_ v: T) {
    value = v
  }
}
