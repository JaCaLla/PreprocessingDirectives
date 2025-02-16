//
//  ContentView.swift
//  ProprocessorDirectives
//
//  Created by Javier Calatrava on 16/2/25.
//

import SwiftUI

struct ContentView: View {
    
    var isRunningTests: Bool {
        return NSClassFromString("XCTestCase") != nil
    }
    
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
            self.fee()
        }
    }
    
    private func fee() {
        if isRunningTests {
            print("Executing unit test-specific code")
        }
    }
    
    private func foo() {
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
