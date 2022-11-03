//
//  PresidentDetailView.swift
//  PresidentsList
//
//  Created by Jacob Conacher on 11/3/22.
//

import SwiftUI
import Foundation

struct PresidentDetailView: View {
    
    var president: PresidentsViewModel
    
    var numFormatter: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .ordinal
        
        let num = Int(president.number)!
        
        return formatter.string(from: NSNumber(value: num)) ?? "0"
    }
    
    var body: some View {
        VStack(spacing: 16) {
            Text(president.name)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
            
            Text("\(numFormatter) President of the United States")
            
            Image("seal")
                .resizable()
                .scaledToFit()
                .cornerRadius(16)
                .padding(.horizontal)
            
            
            Text("Nickname")
                .font(.title)
                .fontWeight(.semibold)
            
            Text(president.nickname)
                .font(.title2)

            Text("Political Party")
                .font(.title)
                .fontWeight(.semibold)
            
            Text(president.party)
                .font(.title2)

            Spacer()
        }
    }
}

struct PresidentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PresidentDetailView(president: PresidentsViewModel.default)
    }
}
