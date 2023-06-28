//
//  MenuSectionsView.swift
//  FoodStoreApp
//
//  Created by Artem on 29.06.2023.
//

import SwiftUI

struct MenuSectionsView: View {
    
    @State var isActive = [true, false, false, false, false]
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Button {
                    
                } label: {
                    Text("Все меню")
                        .font(Font.custom("SF Pro Display", size: 14))
                        .kerning(0.14)
                        .foregroundColor(isActive[0] ? .white : .black)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(isActive[0] ? Color.blue: Color("Dishbackground"))
                .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("Салаты")
                        .font(Font.custom("SF Pro Display", size: 14))
                        .kerning(0.14)
                        .foregroundColor(isActive[1] ? .white : .black)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(isActive[1] ? Color.blue: Color("Dishbackground"))
                .cornerRadius(10)
                
                
                Button {
                    
                } label: {
                    Text("С рисом")
                        .font(Font.custom("SF Pro Display", size: 14))
                        .kerning(0.14)
                        .foregroundColor(isActive[2] ? .white : .black)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(isActive[2] ? Color.blue: Color("Dishbackground"))
                .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("С рыбой")
                        .font(Font.custom("SF Pro Display", size: 14))
                        .kerning(0.14)
                        .foregroundColor(isActive[3] ? .white : .black)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(isActive[3] ? Color.blue: Color("Dishbackground"))
                .cornerRadius(10)

                Button {
                    
                } label: {
                    Text("Роллы")
                        .font(Font.custom("SF Pro Display", size: 14))
                        .kerning(0.14)
                        .foregroundColor(isActive[4] ? .white : .black)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(isActive[4] ? Color.blue: Color("Dishbackground"))
                .cornerRadius(10)


            }
            .padding(16)
        }
    }
}

struct MenuSectionsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuSectionsView()
    }
}
