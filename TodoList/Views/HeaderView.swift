//
//  HeaderView.swift
//  SwiftUI-TodoList-Tutorial
//
//  Created by Raphael Iyin on 10/19/23.
//

import SwiftUI

struct HeaderView: View {
     let rotate: Double
     let title: String
     let subTitle: String
     let color: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(color)
                .rotationEffect(Angle(degrees: rotate))
        
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text(subTitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(rotate: 15, title: "Todo List", subTitle: "Get things done", color: Color.pink)
    }
}
