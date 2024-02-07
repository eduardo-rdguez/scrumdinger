//
//  Theme.swift
//  scrumdinger
//
//  Created by Eduardo Peralta Rodríguez on 25/01/24.
//

import SwiftUI

enum Theme: String {
    case bubblegum
    case buttercup
    case custom_indigo
    case lavender
    case custom_magenta
    case navy
    case custom_orange
    case oxblood
    case periwinkle
    case poppy
    case custom_purple
    case seafoam
    case sky
    case tan
    case custom_teal
    case custom_yellow
    
    var accentColor: Color {
        switch self {
            case .bubblegum, .buttercup, .lavender, .custom_orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .custom_teal, .custom_yellow: return .black
            case .custom_indigo, .custom_magenta, .navy, .oxblood, .custom_purple: return .white
        }
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
    
    var name: String {
        rawValue.capitalized
    }
}
