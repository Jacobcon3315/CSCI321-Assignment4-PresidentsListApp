//
//  ContentView.swift
//  PresidentsList
//
//  Created by Jacob Coancher on 11/3/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var presidentListVM = PresidentsListViewModel()
    
    var body: some View {
        NavigationStack {
            Text("Ah")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
