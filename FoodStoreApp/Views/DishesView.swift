//
//  CategoriesView.swift
//  FoodStoreApp
//
//  Created by Artem on 28.06.2023.
//

import SwiftUI

struct DishesView: View {
    
    @State private var id: Int = -1
    
    let layout = [
        GridItem(.fixed(109)),
        GridItem(.fixed(109)),
        GridItem(.fixed(109))
    ]
    var body: some View {
        
        ZStack {
            VStack {
                NavigationBarView()
                MenuSectionsView()
                ScrollView {
                    LazyVGrid (columns: layout) {
                        ForEach(1..<13)  {index in
                            VStack(alignment: .leading,spacing: 8){
                                Image("\(index)")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 87, height: 98)
                                    .frame(width: 109, height: 109,alignment: .bottom)
                                    .background(Color("Dishbackground"))
                                    .cornerRadius(10)
                                Text("Блюдо номер \(index)")
                            }
                            .onTapGesture {
                                id = index
                            }
                        }
                    }
                    
                }
            }
            
            
            if id > 0 {
                Color.black.opacity(0.4).ignoresSafeArea()
                VStack{
                    ZStack(alignment: .topTrailing) {
                        Image("\(id)")
                            .resizable()
                            .frame(width: 198, height: 204)
                            .frame(width: 311, height: 232, alignment: .bottom)
                            .background(Color("Dishbackground"))
                        HStack(spacing: 0) {
                            Button {
                                id = -1
                            } label: {
                                Image("ic-dismiss")
                                    .frame(width: 40, height: 40)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .padding(.top,8)
                            }
                            
                            
                            
                            Image("ic-heart")
                                .frame(width: 40, height: 40)
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding(.top, 8)
                                .padding(.horizontal, 8)
                        }
                    }
                    .padding(16)
                    .frame(width: 343, height: 446, alignment: .top)
                    .background(Color.white)
                }
            }
        }
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
    }
}
