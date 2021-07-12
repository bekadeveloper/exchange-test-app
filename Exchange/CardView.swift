//
//  CardView.swift
//  Exchange Test
//
//  Created by Beka on 12/07/21.
//

import SwiftUI

struct CardView: View {
    var item: Currency
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .opacity(0.8)
            
            VStack(spacing: 25) {
                Text(item.currency)
                    .font(.system(size: 30, weight: .semibold, design: .default))
                
                HStack(spacing: 60) {
                    VStack(alignment: .leading) {
                        Text("Покупка:")
                        Text("\(item.buyCourse)")
                    }
                                        
                    VStack(alignment: .leading) {
                        Text("Продажа:")
                        Text("\(item.sellCourse)")
                    }
                }
                .font(.system(size: 18, weight: .semibold, design: .default))
            }
            .foregroundColor(.white)
        }
        .frame(width: 350, height: 200)
    }
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView(item: Currency(buyCourse: 12345, sellCourse: 54321, cbCourse: 00000, currency: "Unknown", currencyCode: "1", scale: 0))
//    }
//}
