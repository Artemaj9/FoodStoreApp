//
//  HomeView.swift
//  FoodStoreApp
//
//  Created by Artem on 28.06.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 8) {
            NavigationBarView()
            ZStack(alignment: .topLeading){
                Image("img-bakeries")
                    .resizable()
                    .frame(width: 343,height: 148)
                Text("Пекарни\nи конидитерские")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .padding(.leading, 16)
                    .padding(.top, 12)
            }
            
            ZStack(alignment: .topLeading) {
                Image("img-fastfood")
                    .resizable()
                    .frame(width: 343,height: 148)
                Text("Фастфуд")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .padding(.leading, 16)
                    .padding(.top, 12)
                
            }
            
            ZStack(alignment:.topLeading) {
                Image("img-asian")
                    .resizable()
                    .frame(width: 343,height: 148)
                Text("Азиатская кухня")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .padding(.leading, 16)
                    .padding(.top, 12)
            }
            
            ZStack(alignment: .topLeading) {
                Image("img-soups")
                    .resizable()
                    .frame(width: 343,height: 148)
                Text("Супы")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .padding(.leading, 16)
                    .padding(.top, 12)
            }
            
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
