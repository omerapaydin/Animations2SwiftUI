//
//  ContentView.swift
//  Animations2SwiftUI
//
//  Created by Ömer on 18.01.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var isAnimating = false
    
    var body: some View {
        VStack {
            Circle()
                .fill(isAnimating ? Color.red : Color.blue)
                .frame(width: isAnimating ? 150 : 250, height: isAnimating ? 150 : 250)
                .animation(.easeInOut(duration: 1),value: isAnimating)
            
            
            Button("Animate") {
                isAnimating.toggle()
            }.padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
