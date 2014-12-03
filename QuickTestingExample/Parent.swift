//
//  Parent.swift
//  QuickTestingExample
//
//  Created by Joshua Lay on 3/12/2014.
//
//

import Foundation

public class Parent: NSObject {
    public func caresAbout(ability: ChildAbility, toPerform: String, forChild: Child) -> Bool {
        if ability == .Eat {
            return toPerform == "chocolate"
        }
        
        return false
    }
    
    public func allows(ability: ChildAbility, toPerform: String, forChild: Child) -> Bool {
        return true
    }
}