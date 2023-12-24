//
//  ContentView.swift
//  SwiftUI Animations
//
//  Created by Saba Gogrichiani on 24.12.23.
//

import SwiftUI

struct MainTaskView: View {
    // MARK: - Properties
    @State var isAnimated = false
    
    // MARK: - Body
    var body: some View {
        VStack {
            Text("TBC IT Academy")
                .foregroundStyle(isAnimated ? .red : .blue)
                .font(.system(size: 25))
                .scaleEffect(isAnimated ? 1.5 : 1)
                .offset(y: isAnimated ? -50 : 0)
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 2.5).repeatForever(autoreverses: true)) {
                        isAnimated = true
                    }
                }
        }
    }
}

#Preview {
    MainTaskView()
}
