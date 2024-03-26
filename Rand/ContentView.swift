//
//  ContentView.swift
//  Rand
//
//  Created by Сергей Черкашин on 16.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    var body: some View {
        VStack {
            
            Button("Рандомить", action: {
                let choise = rand()
                if choise == 1
                {
                    print(const.positive)
                    
                } else if choise == 2
                {
                    print(const.negative)
                    
                } else if choise == 3
                {
                    print(const.absolutely)
                    
                } else if choise == 4
                {
                    print(const.badchance)
                    
                } else if choise == 5
                {
                    print(const.dontunderstand)
                }
                
                showAlert = true
            })
        
                .buttonStyle(.bordered)
                .tint(.purple)
            
                .alert(isPresented: $showAlert) {
                            Alert(title: Text("Предупреждение"), message: Text("Это предупреждение об ошибке"), dismissButton: .default(Text("OK")))
                        }
        }
    }
}
    
#Preview {
    ContentView()
}

