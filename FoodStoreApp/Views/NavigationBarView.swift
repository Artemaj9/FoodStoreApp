//
//  NavigationBarView.swift
//  FoodStoreApp
//
//  Created by Artem on 28.06.2023.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        
        
        HStack(alignment: .top) {
            Image("ic-location")
                .padding(.top, 3)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Санкт-Петербург")
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("12 Августа, 2023")
                    .foregroundColor(.gray)
            }
            Spacer()
            
            Image("img-user")
                .resizable()
                .frame(width: 44,height: 44)
                .scaledToFit()
                .cornerRadius(22)
                

            
        }
        .padding(.horizontal, 16)
        .padding(.bottom, 7)
        .frame(height: 101)
        
    }
       
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
