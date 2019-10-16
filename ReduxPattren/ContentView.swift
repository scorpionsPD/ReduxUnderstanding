//
//  ContentView.swift
//  ReduxPattren
//
//  Created by Pradeep Dahiya on 15/10/19.
//  Copyright © 2019 Pradeep Dahiya. All rights reserved.
//

import SwiftUI

struct ContentView: View  {
    
    @ObservedObject var store: DefaultStore<CounterState>
    @State private var updatedvalue:String?
    
  var body: some View {
    HStack {
      Button("-", action: { self.updatedvalue = "\(self.store.getCurrent().count)"
        self.store.dispatch(action: CounterAction.decrement) })
      Text("Counter: \(updatedvalue ?? "0")")
      Button("+", action: { self.updatedvalue = "\(self.store.getCurrent().count)"
        self.store.dispatch(action: CounterAction.increment) })
    }
  }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
