//
//  ContentView.swift
//  Rand
//
//  Created by Сергей Черкашин on 16.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    @State private var textInput = ""
    @State private var text = ""
    var body: some View {
        VStack {
            
            TextField("Введите проблему", text: $textInput)
                .offset(y: -25)
                .textFieldStyle(.roundedBorder)
            
            Button("Мне повезет", action: {
                let choise = rand()
                if choise == 1
                {
                    text = const.positive
                    
                } else if choise == 2
                {
                    text = const.negative
                    
                } else if choise == 3
                {
                    text = const.absolutely
                    
                } else if choise == 4
                {
                    text = const.badchance
                    
                } else if choise == 5
                {
                    text = const.dontunderstand
                }
                
                showAlert = true
            })
        
                .buttonStyle(.bordered)
                .tint(.purple)
            
                .alert(isPresented: $showAlert) {
                            Alert(title: Text(textInput), message: Text(text), dismissButton: .default(Text("OK")))
                        }
        }
    }
}
    
#Preview {
    ContentView()
}

