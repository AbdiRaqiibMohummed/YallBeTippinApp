//
//  MenuItemView.swift
//  YallBeTippinApp
//
//  Created by Abdiraqiib Hassan on 04/09/2025.
//

import SwiftUI

struct MenuItemView: View {
    @Binding var item: MenuItem
    
    var body: some View {
        HStack (alignment: .center){
            VStack(alignment: .leading , spacing:15){
                Text(item.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                
                Text("$\(item.price)")
                    .font(.title3)
            }
            
            Spacer()
            
            VStack(alignment: .center, spacing:5 ){
                Button {
                    print("plus button tapped")
                    item.orderCount += 1
                    
                } label: {
                    ZStack{
                        Circle()
                            .fill(Color.blue)
                        Image(systemName: "plus")
                            .symbolRenderingMode(.monochrome)
                            .foregroundStyle(.white)

                    }
                }
                
                Text("\(item.orderCount)")
                
                Button {
                    if(item.orderCount > 0){
                        item.orderCount -= 1
                    }
                    print("minus button tapped")
                } label: {
                    ZStack{
                        Circle()
                            .fill(Color.blue)
                        Image(systemName: "minus")
                            .symbolRenderingMode(.monochrome)
                            .foregroundStyle(.white)
                        
                    }
                }

            }
            
            Image(item.img)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
        }
        .frame(maxHeight: 100)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    MenuItemView(item: .constant(MenuItem(name: "Burger", price: 12.5, img: "burger")))
}
