//
//  UITableView.swift
//
//  Created by Evan Dorn on 12/13/17.
//  Copyright © 2017 Evan Dorn. All rights reserved.
//

extension UITableView {
  
  func registerCellClass(_ cellClass: AnyClass) {
    let identifier = String.className(cellClass)
    self.register(cellClass, forCellReuseIdentifier: identifier)
  }
  
  func registerCellNib(_ cellClass: AnyClass) {
    let identifier = String.className(cellClass)
    let nib = UINib(nibName: identifier, bundle: nil)
    self.register(nib, forCellReuseIdentifier: identifier)
  }
  
  func registerHeaderFooterViewClass(_ viewClass: AnyClass) {
    let identifier = String.className(viewClass)
    self.register(viewClass, forHeaderFooterViewReuseIdentifier: identifier)
  }
  
  func registerHeaderFooterViewNib(_ viewClass: AnyClass) {
    let identifier = String.className(viewClass)
    let nib = UINib(nibName: identifier, bundle: nil)
    self.register(nib, forHeaderFooterViewReuseIdentifier: identifier)
  }
}
