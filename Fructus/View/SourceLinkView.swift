//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Joshua Basche on 2/9/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
      GroupBox() {
        HStack {
          Text("Content Source")
          Spacer()
          Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
          Image(systemName: "arrow.up.right.square")
        } //: HSTACK
        .font(.footnote)
      } //: GROUPBOX
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
          .previewLayout(.sizeThatFits)
          .padding()
    }
}
