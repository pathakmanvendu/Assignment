//
//  CardView.swift
//  Assignment
//
//  Created by Manvendu Pathak on 29/02/24.
//

import SwiftUI

struct CardView: View {
    var item: Item
    var body: some View {
        VStack(alignment: .center){
            Image(item.image)
                .resizable()
                .frame(width:100, height: 100)
            
            Text(item.title)
            Text(item.weight)
                .font(.system(size: 14))
                .opacity(0.5)
            
            HStack {
                Image("coin")
                    .resizable()
                    .frame(width:50, height:50)
                Text("\(item.coin)")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button("Claim"){
                    
                }
                .buttonStyle(ButtonAnimation())
                

            }
        }
        .frame(width: 160, height: 200)
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(item: ItemsData[1])
            .previewLayout(.fixed(width: 320, height: 640))

    }
}


//Button growing animation
struct ButtonAnimation: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(5)
            .foregroundStyle(.blue)
            . overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 2))
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
