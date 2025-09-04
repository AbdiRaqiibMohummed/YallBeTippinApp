//
//  ContentView.swift
//  YallBeTippinApp
//
//  Created by Abdiraqiib Hassan on 03/09/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            MenuListView()
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
