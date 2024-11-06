//
//  ContentView.swift
//  FinnishParlament
//
//  Created by Anna Lindén on 6.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MemberList()
        .environmentObject(ModelData())
    }
}

#Preview {
    ContentView()
        .environmentObject(ModelData())
}
