//
//  ContentView.swift
//  BetterRest
//
//  Created by Naveed on 13/08/2024.
//

import SwiftUI

struct ContentView: View {
    private let dateRange = Date.now...Date.now.addingTimeInterval(86400) // 2nd range define the tomorrow in seconds
    @State private var sleepAmount = 4.0
    @State private var wakeUp = Date.now
    var body: some View {
        VStack {
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
            DatePicker("Please enter a date", selection: $wakeUp,in: dateRange)
                .labelsHidden()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
