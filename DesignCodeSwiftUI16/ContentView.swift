//
//  ContentView.swift
//  DesignCodeSwiftUI16
//
//  Created by Evgeniya Molodetskaya on 2024-04-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack(spacing: 20.0) {
            Image(systemName: "timelapse")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
          Text("Switching Apps")
            .font(.largeTitle)
            .fontWeight(.bold)
          Text("Tap and hold any part of the screen for 1 second to show the menu for switching between apps.")
            .font(.body)
            .fontWeight(.regular)
            .multilineTextAlignment(.center)
          Button("Got It") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
          }
          .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
          .frame(width: 300.0)
          .border(/*@START_MENU_TOKEN@*/Color("AccentColor")/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        }
        
    }
}

#Preview {
    ContentView()
}
