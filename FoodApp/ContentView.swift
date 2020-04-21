//
//  ContentView.swift
//  FoodApp
//
//  Created by MMBBS0000 on 15.04.20.
//  Copyright © 2020 gditdev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            CategoryView(imageName: "burger", categoryName: "BURGER")
            CategoryView(imageName: "pizza", categoryName: "PIZZA")
            CategoryView(imageName: "pasta", categoryName: "PASTA")
            CategoryView(imageName: "dessert", categoryName: "DESSERTS")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CategoryView:View{
    var imageName:String
    var categoryName:String
    var body:some View{
        HStack{
            
            Spacer()
            ZStack{
                Spacer()
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 150)
                    .clipped()
                    .cornerRadius(20.0)
                Spacer()
                Text(categoryName).font(.custom("HelveticaNeue-Medium", size: 50)).foregroundColor(.white)
                
            }
            Spacer()
        } .padding(.top,5)
            .padding(.bottom,5)
    }
}




