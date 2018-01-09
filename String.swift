//
//  String.swift
//  Extensions
//
//  Created by Evan Dorn on 5/8/17.
//  Copyright © 2017 Evan Dorn. All rights reserved.
//

import Foundation

extension String {
    private var ns: NSString {
        return (self as NSString)
    }
    
    func capitalizeFirst() -> String {
        let firstIndex = self.index(startIndex, offsetBy: 1)
        return self[..<firstIndex].capitalized + self[firstIndex...].lowercased()
    }

    public func substring(from index: Int) -> String {
        return ns.substring(from: index)
    }
    
    public func substring(to index: Int) -> String {
        return ns.substring(to: index)
    }
    
    public func substring(with range: NSRange) -> String {
        return ns.substring(with: range)
    }
    
    public var lastPathComponent: String {
        return ns.lastPathComponent
    }
    
    public var pathExtension: String {
        return ns.pathExtension
    }
    
    public var deletingLastPathComponent: String {
        return ns.deletingLastPathComponent
    }
    
    public var deletingPathExtension: String {
        return ns.deletingPathExtension
    }
    
    public var pathComponents: [String] {
        return ns.pathComponents
    }
    
    public func appendingPathComponent(_ str: String) -> String {
        return ns.appendingPathComponent(str)
    }
    
    public func appendingPathExtension(_ str: String) -> String? {
        return ns.appendingPathExtension(str)
    }
  
    static func className(_ aClass: AnyClass) -> String {
      return NSStringFromClass(aClass).components(separatedBy: ".").last!
    }
}
