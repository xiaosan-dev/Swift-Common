//
//  MainReactor.swift
//  Swift-Common
//
//  Created by wang xiaolong on 2020/6/17.
//  Copyright © 2020 xiaosan. All rights reserved.
//

import Foundation
import ReactorKit
import RxSwift

class MainReactor: Reactor {
    
    enum Action {
        case reload
    }

    enum Mutation {
        case reload
    }

    struct State {
        var isLoading: Bool
    }
    
    let initialState: State

    init() {
        initialState = State(isLoading: false)
    }

    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .reload:
            return .just(.reload)
        }
    }
    
    func reduce(state: State, mutation: Mutation) -> State {
        var state = state
        switch mutation {
        case .reload:
            state.isLoading = true
        }
        return state
    }
}
