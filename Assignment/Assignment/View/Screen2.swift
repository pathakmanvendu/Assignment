//
//  Screen2.swift
//  Assignment
//
//  Created by Manvendu Pathak on 29/02/24.
//

import SwiftUI

struct Screen2: View {
    var items: [Item] = ItemsData
    private let fixedColumn = [
        GridItem(.fixed(180)),
        GridItem(.fixed(180))
    ]
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Image("logo")
                    .resizable()
                    .frame(width:50, height: 50)
                VStack(alignment: .leading){
                    Text("Ratnadeep Supermarket")
                        .bold()
                    
                    Text("1% cashback ₹250 Welcome Bonus")
                        .opacity(0.5)
                }
            }
            
            Text("Claim Deals")
                .bold()
                .font(.system(size: 30, design: .rounded))
            
            ScrollView{
                LazyVGrid(columns: fixedColumn, spacing: 40){
                    ForEach(items, id: \.self) { item in
                        CardView(item: item)
                        
                    }
                }
            }
            
        }.padding()
    }
}

struct Screen2_Previews: PreviewProvider {
    static var previews: some View {
        Screen2()
    }
}
