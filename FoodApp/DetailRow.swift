//
//  DetailRow.swift
//  FoodApp
//
//  Created by MMBBS0000 on 16.04.20.
//  Copyright © 2020 gditdev. All rights reserved.
//

import SwiftUI

struct DetailRow: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("BBQ Burger").font(.headline)
                .padding(.top,10)
            Text("9,90000$").font(.caption)
            
        }
        
        }
        
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow()
    }
}
