//
//  ContentView.swift
//  Assignment
//
//  Created by Manvendu Pathak on 29/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Start", destination:Screen2())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
