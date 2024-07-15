//
//  ContentView.swift
//  DesignCodeSwiftUI16
//
//  Created by Evgeniya Molodetskaya on 2024-04-14.
//

import SwiftUI

struct ContentView: View {
    @State var time = 0.0
    @State var showMessage = true
    let timer = Timer
        .publish(
            every: 0.1,
            on: .main,
            in: .common
        )
        .autoconnect()
    
    var body: some View {
        content
            .opacity(showMessage ? 1 : 0)
            .scaleEffect(showMessage ? 1 : 0)
            .rotationEffect(.degrees(showMessage ? 0 : 30))
            .offset(y: showMessage ? 0 : 500)
            .blur(radius: showMessage ? 0 : 20)
            .padding(10)
            .dynamicTypeSize(.xSmall ... .xxxLarge)
    }
    
    var content: some View {
        VStack(spacing: 20.0) {
            Image(systemName: "timelapse", variableValue: time)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .font(.system(size: 50.0))
                .fontWeight(.thin)
                .onReceive(timer, perform: { value in
                    if time < 1.0 {
                        time += 0.1
                    } else {
//                        time = 0.0
                    }
                })
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
                withAnimation(.easeInOut) {
                    showMessage = false
                }
                
            } label: {
                Text("Got it")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity)
                    .background(.white.opacity(0.2).gradient)
                    .cornerRadius(10)
                    .background(stroke)
            }
            .accentColor(.primary)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
          
        }
        .padding(30)
        .background(.ultraThinMaterial)
        .cornerRadius(10)
        .overlay(stroke)
        .shadow(
            color: .black.opacity(0.3),
            radius: 20,
            y: 20
        )
        .frame(maxWidth: 500)
        
    }
    
    var stroke: some View {
        RoundedRectangle(cornerRadius: 10.0)
            .stroke()
            .foregroundStyle(
                .linearGradient(
                    colors: [.white.opacity(0.5), .clear, .white.opacity(0.5), .clear],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
    }
}

#Preview {
    ContentView()
        .background(Image("Wallpaper 4"))
}
