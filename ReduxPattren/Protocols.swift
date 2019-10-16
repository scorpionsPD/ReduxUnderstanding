//
//  Protocols.swift
//  ReduxPattren
//
//  Created by Pradeep Dahiya on 15/10/19.
//  Copyright © 2019 Pradeep Dahiya. All rights reserved.
//

import Foundation
import Combine

protocol Action {}

protocol ReduxState {}

typealias Reducer <S: ReduxState> = (S, Action) -> S

