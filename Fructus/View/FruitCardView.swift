//
//  FruitCardView.swift
//  Fructus
//
//  Created by Joshua Basche on 2/4/21.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTIES
  
    // MARK: - BODY
  
    var body: some View {
      ZStack {
        VStack(spacing: 20) {
          // FRUIT: IMAGE
          
          Image("blueberry")
            .resizable()
            .scaledToFit()
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
          
          // FRUIT: TITLE
          Text("Blueberry")
            .foregroundColor(.white)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
          
          // FRUIT: HEADLINE
          Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world.")
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 16)
            .frame(maxWidth: 480)
          
          // BUTTON: START
         
          
        } //: VSTACK
      } //: ZSTACK
      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .center)
      .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
      .cornerRadius(20)
    }
}

// MARK: - PREVIEW

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
          .previewLayout(.fixed(width: 320, height: 640))
    }
}
