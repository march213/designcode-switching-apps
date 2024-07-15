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
            Text("Switching Apps".uppercased())
                .font(.largeTitle.width(.condensed))
                .fontWeight(.bold)
            Text("Tap and hold any part of the screen for 1 second to show the menu for switching between apps.")
              .font(.body)
              .fontWeight(.regular)
              .multilineTextAlignment(.center)
              .foregroundColor(.secondary)
              .fontWeight(.medium)
            Button {
                // Action
            } label: {
                Text("Got it")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity)
                    .background(.white.opacity(0.2).gradient)
                    .cornerRadius(10)
                    .background(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke()
                            .foregroundStyle(
                                .linearGradient(
                                    colors: [.white.opacity(0.5), .clear, .white.opacity(0.5), .clear],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                    )
            }
            .accentColor(.primary)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
          
        }
        .padding(30)
        .background(.ultraThinMaterial)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10.0)
                .stroke()
                .foregroundStyle(
                    .linearGradient(
                        colors: [.white.opacity(0.5), .clear, .white.opacity(0.5), .clear],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
        )
        .shadow(
            color: .black.opacity(0.3),
            radius: 20,
            y: 20
        )
        .frame(maxWidth: 500)
        .padding(10)
        .dynamicTypeSize(.xSmall ... .xxxLarge)
    }
}

#Preview {
    ContentView()
        .background(Image("Wallpaper 2"))
}
