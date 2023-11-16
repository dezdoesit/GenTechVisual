//
//  Android.swift
//  SwiftUIStoryTemplate
//
//  Created by Maya Caldwell on 11/16/23.
//

import Foundation

struct Android {
    var Brain: Species = .human
    var Arm: Species = .human
    var Eye: Species = .human
    var Heart: Species = .human
    var Leg: Species  = .human
    
    var armImagePath: String {
        switch Arm {
        case .human:
            "humanarm"
        case .robot:
            "roboarm"
        }
    }
    var brainImagePath: String {
        switch Brain {
        case .human:
            "humanbrain"
        case .robot:
            "robobrain"
                    
                }
            }
    
    var eyeImagePath: String {
        switch Eye {
        case .human:
            "humaneye"
        case .robot:
            "roboeye"
        }
    }
        
    var heartImagePath: String {
        switch Heart {
        case .human:
            "humanheart"
        case .robot:
            "roboheart"
        }
    }
    
    var legImagePath: String {
        switch Leg {
        case .human:
            "humanleg"
        case .robot:
            "roboleg"
        }
    }
             
}
