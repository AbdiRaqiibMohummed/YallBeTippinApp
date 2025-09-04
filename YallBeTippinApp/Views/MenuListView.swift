//
//  MenuListView.swift
//  YallBeTippinApp
//
//  Created by Abdiraqiib Hassan on 03/09/2025.
//

import SwiftUI

struct MenuListView: View {
    @State var vm = MenuListVM()
    
    var body: some View {
        List($vm.items){ $item in
                MenuItemView(item: $item)
        }
        .navigationTitle("Menu")
    }
}

#Preview {
    MenuListView()
}
