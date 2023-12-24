//
//  OptionalTask.swift
//  SwiftUI Animations
//
//  Created by Saba Gogrichiani on 24.12.23.
//

import SwiftUI
import EffectsLibrary

struct OptionalTask: View {
    // MARK: - Properties
    @State private var animateGradient = false
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack {
                if animateGradient {
                    animatedText
                } else {
                    animatedText
                }
                
                SwiftUIXmasTree2()
            }
            .padding(.bottom, 150)
            .onAppear {
                withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                    animateGradient.toggle()
                }
            }
            
            FireworksView()
            
            SnowView()
            
        }
    }
    
    private var animatedText: some View {
        Text("TBC IT Academy")
            .font(.title2)
            .foregroundStyle(
                .linearGradient(
                    Gradient(colors: animateGradient ? [.red, .blue] : [.brown, .yellow]),
                    startPoint: .leading,
                    endPoint: .trailing))
    }
}

#Preview {
    OptionalTask()
}
