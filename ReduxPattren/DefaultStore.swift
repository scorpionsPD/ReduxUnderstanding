//
//  DefaultStore.swift
//  ReduxPattren
//
//  Created by Pradeep Dahiya on 15/10/19.
//  Copyright © 2019 Pradeep Dahiya. All rights reserved.
//

import Foundation
import Combine


protocol Store: ObservableObject {
    
    associatedtype S: ReduxState
    
    var reducer: Reducer<S> { get }
    
    func dispatch(action: Action)
    func getCurrent() -> S
}


class DefaultStore <S: ReduxState>: Store {
    
    var willChange = PassthroughSubject<Void, Never>()
    
    private var state: S {
        didSet {
            willChange.send()
        }
    }
        
    let reducer: Reducer<S>
    
    init(reducer: @escaping Reducer<S>,
         initialState state: S) {
        self.reducer = reducer
        self.state = state
    }
    
    func dispatch(action: Action) {
        state = reducer(state,action)
    }
        
    func getCurrent() -> S {
        return state
    }
}
