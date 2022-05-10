//
//  ButtonDesignView.swift
//  SwiftUIWeatherApp
//
//  Created by Mostafa Abd ElFatah on 5/10/22.
//

import SwiftUI

struct ButtonDesignView: View {
    
    var text:String
    var textColor:Color
    var backgroundColor:Color
    
    var body: some View {
        Text(text)
            .frame(width: 280, height: 50)
            .font(.system(size: 20, weight: .bold, design: .default))
            .foregroundColor(textColor)
            .background(backgroundColor)
            .cornerRadius(5)
    }
}

struct ButtonDesignView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            ButtonDesignView(text: "Button Title", textColor: .orange, backgroundColor: .white)
        }
    }
}
