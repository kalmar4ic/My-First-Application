//
//  ContentView.swift
//  Rand
//
//  Created by Сергей Черкашин on 16.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Button("Рандомить", action: {
                
                for _ in 0...5{
                    var r = rand()
                    print(r)
                    
                }
            })
        
                .buttonStyle(.bordered)
                .tint(.purple)
        }
    }
}
    
#Preview {
    ContentView()
}

