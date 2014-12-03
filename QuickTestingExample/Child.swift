//
//  Child.swift
//  QuickTestingExample
//
//  Created by Joshua Lay on 3/12/2014.
//
//

import Foundation

public enum ChildAbility {
    case Eat
}

public class Child: NSObject {
    var parent: Parent
    
    public init(parent withParent: Parent) {
        self.parent = withParent
    }
    
    public func can(ability: ChildAbility, perform: String) -> Bool {
        if self.parent.caresAbout(ability, toPerform: perform, forChild: self) {
            return self.parent.allows(ability, toPerform: perform, forChild: self)
        }
        
        return true
    }
}