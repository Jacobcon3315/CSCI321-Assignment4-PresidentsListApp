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
            List {
                ForEach(presidentListVM.presidents, id: \.name) {
                    presidentVM in
                    NavigationLink(destination: PresidentDetailView(president: presidentVM)) {
                        PresidentCell(president: presidentVM)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("US Presidents")
            .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear {
            presidentListVM.loadPropertyList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
