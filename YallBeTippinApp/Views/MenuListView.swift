//
//  MenuListView.swift
//  YallBeTippinApp
//
//  Created by Abdiraqiib Hassan on 03/09/2025.
//

import SwiftUI

struct MenuListView: View {
    @StateObject var vm = MenuListVM()
    
    var body: some View {
        List($vm.items){ $item in 
            Text(item.name)
        }
    }
}

#Preview {
    MenuListView()
}
