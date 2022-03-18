//
//  FruitDetailHeaderView.swift
//  Fructus
//
//  Created by Visarut Tippun on 18/3/22.
//

import SwiftUI

struct FruitDetailHeaderView: View {
    var fruit: Fruit
    
    @State private var isAnimatingImage: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        } //: ZStack
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

struct FruitDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailHeaderView(fruit: fruitData.first!)
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
