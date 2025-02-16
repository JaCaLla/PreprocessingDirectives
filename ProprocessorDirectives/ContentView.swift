//
//  ContentView.swift
//  ProprocessorDirectives
//
//  Created by Javier Calatrava on 16/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear() {
            self.foo()
        }
    }
    
    private func foo() {
        //let experimentalFeatureEnabled = true

        #if EXPERIMENTAL_FEATURE
            print("Experimental feature is enabled")
        #else
            print("Experimental feature is disabled")
        #endif
    }
}

#Preview {
    ContentView()
}
