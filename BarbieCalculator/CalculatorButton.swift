//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Mariola Hullings on 7/25/23.
//

import SwiftUI

struct CalculatorButton: View {
    @State private var animationAmount: CGFloat = 1.0
    var width: CGFloat = 70
    var color = Color(hue: 330.0 / 360.0, saturation: 0.6, brightness: 1.1)
    var buttonText = "1"
    var action: (CalculatorButton) -> Void = {_ in }
    var mode: CalculatorMode = .notSet
    
    var body: some View {
        Button {
            withAnimation(.easeIn(duration: 0.15)) {
                animationAmount = 0.5 // Set to a smaller size
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                withAnimation(.easeOut(duration: 0.3)) {
                    animationAmount = 1.0 // Reset to original size
                }
            }
            action(self)
        } label: {
            Text(buttonText)
                .font(.largeTitle)
                .bold()
                .frame(width: width, height: 70, alignment: .center)
                .background(color)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 35))
                .scaleEffect(animationAmount)
        }
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton()
    }
}
