//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Joshua Basche on 2/5/21.
//

import SwiftUI

struct FruitDetailView: View {
  // MARK: - PROPERTIES
  var fruit: Fruit
  
  // MARK: - BODY
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
          // HEADER
//          Image(fruit.image)
//            .resizable()
//            .scaledToFit()
//            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
//            .background(
//              LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
//            )
          VStack(alignment: .leading, spacing: 20) {
            // TITLE
            Text(fruit.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(fruit.gradientColors[1])
            
            // HEADLINE
            Text(fruit.headline)
              .font(.headline)
              .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            
            // NUTRIENTS
              
            // SUBHEADLINE
            Text("Learn more about \(fruit.title)".uppercased())
              .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
              .foregroundColor(fruit.gradientColors[1])
            
            // DESCRIPTION
            Text(fruit.description)
              .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            
            // LINK
            
          } //: VSTACK
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center)
        } //: VSTACK
      } //: SCROLL
    } //: NAVIGATION
  }
}

// MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FruitDetailView(fruit: fruitsData[0])
  }
}
