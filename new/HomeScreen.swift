//
//  HomeScreen.swift
//  new
//
//  Created by Muhammad Islamov on 17/02/22.
//

import SwiftUI

struct HomeScreen: View {
    
    @State private var half = false
      @State private var dim = false
      
      var body: some View {
          Image("tower")
              .scaleEffect(half ? 0.5 : 1.0)
              .opacity(dim ? 0.2 : 1.0)
              .animation(.easeInOut(duration: 1.0))
              .onTapGesture {
                  self.dim.toggle()
                  self.half.toggle()
              }
      }

}
