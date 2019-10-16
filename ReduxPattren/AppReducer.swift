//
//  AppReducer.swift
//  ReduxPattren
//
//  Created by Pradeep Dahiya on 15/10/19.
//  Copyright © 2019 Pradeep Dahiya. All rights reserved.
//

import Foundation

let CounterStateReducer: Reducer<CounterState> = { old, action in
    
    if let action = action as? CounterAction {
        switch action {
        case .increment:
            return CounterState(count: old.count + 1)
        case .decrement:
            return CounterState(count: old.count - 1)
        }
    }
    
    return old
}

