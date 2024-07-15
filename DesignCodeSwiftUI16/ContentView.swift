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
            Image(systemName: "timelapse", variableValue: 0.2)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .font(.system(size: 50.0))
                .fontWeight(.thin)
            Text("Switching Apps")
              .font(.largeTitle)
              .fontWeight(.bold)
            Text("Tap and hold any part of the screen for 1 second to show the menu for switching between apps.")
              .font(.body)
              .fontWeight(.regular)
              .multilineTextAlignment(.center)
            Button {
                // Action
            } label: {
                Text("Got it")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke()
                    )
            }
            .accentColor(.primary)
          
        }
        .padding(30)
        .background(.ultraThinMaterial)
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke())
        .padding(10)
    }
}

#Preview {
    ContentView()
        .background(Image("Wallpaper 2"))
}
