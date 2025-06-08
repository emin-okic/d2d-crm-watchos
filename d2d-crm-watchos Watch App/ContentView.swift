//
//  ContentView.swift
//  d2d-crm-watchos Watch App
//
//  Created by Emin Okic on 6/8/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var counter = KnockCounter()
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Total Knocks")
                .font(.headline)
            Text("\(counter.totalKnocks)")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundColor(.green)

            Button("Add Knock") {
                counter.increment()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
