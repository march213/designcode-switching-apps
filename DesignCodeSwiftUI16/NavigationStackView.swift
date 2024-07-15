//
//  NavigationStackView.swift
//  DesignCodeSwiftUI16
//
//  Created by Evgeniya Molodetskaya on 2024-07-14.
//

import SwiftUI

struct NavigationStackView: View {
    var body: some View {
        NavigationStack {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                NavigationLink(destination: Text("Content")) {
                    Label("Item", systemImage: "house")
                        .foregroundColor(.primary)
                }
            }
            .navigationTitle("SwiftUI Apps")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(.plain)
        }
    }
}

#Preview {
    NavigationStackView()
}
