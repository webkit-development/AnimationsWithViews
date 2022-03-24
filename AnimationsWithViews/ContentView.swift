//
//  ContentView.swift
//  AnimationsWithViews
//
//  Created by Kevin Stradtman on 3/23/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingOrange = false
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    isShowingOrange.toggle()
                }
            }
            if isShowingOrange {
            Rectangle()
                .fill(.orange)
                .frame(width: 200, height: 200)
                .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
