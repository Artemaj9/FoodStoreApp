//
//  MainScreenView.swift
//  FoodStoreApp
//
//  Created by Artem on 28.06.2023.
//

import SwiftUI

struct MainScreenView: View {
    
    @State var isHighlited: Bool?
    
    var body: some View {
        
        
        TabView {
            
            HomeView()
                .tabItem {
                    Image("ic-home").renderingMode(.template) 
                    Text("Главная")
                }
            SearchView()
                .tabItem {
                    Image("ic-search").renderingMode(.template)
                    Text("Поиск")
                }
            ShoppingCartView()
                .tabItem {
                    Image("ic-cart").renderingMode(.template)
                    Text("Корзина")
                }
            AccountView()
                .tabItem{
                    Image("ic-account").renderingMode(.template)
                    Text("Аккаунт")
                }
            }
        }
    }

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
