//
//  ContentView.swift
//  FoodApp
//
//  Created by Virtual Mac Catalina on 18.04.20.
//  Copyright © 2020 Virtual Mac Catalina. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: DetailView(currentCategory: .burger)){
                    CategoryView(imageName: "burger", categoryName: "BURGER")
                    
                }
                NavigationLink(destination: DetailView(currentCategory: .pizza)){
                    CategoryView(imageName: "pizza", categoryName: "PIZZA")
                }
                NavigationLink(destination: DetailView(currentCategory: .pasta)){
                    CategoryView(imageName: "pasta", categoryName: "PASTA")
                }
                NavigationLink(destination: DetailView(currentCategory: .dessert)){
                    CategoryView(imageName: "dessert", categoryName: "DESSERTS")
                }
                
                
            }
        .navigationBarTitle(Text("Food Delivery"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CategoryView: View {
    
    var imageName:String
    var categoryName:String
    
    var body: some View {
        
        HStack{
            Spacer()
            ZStack{
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 150)
                    .clipped()
                    .cornerRadius(20.0)
                
                Text(categoryName)
                    .font(.custom("HelveticaNeu-Medium", size: 50))
                    .foregroundColor(.white)
                
            }
            Spacer()
        }
        .padding(.top,5)
        .padding(.bottom,5)
        
    }
}
