//
//  ContentView.swift
//  SwiftUIWeatherApp
//
//  Created by Mostafa Abd ElFatah on 5/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BackgroundView(colors: [.blue, Color("lightBlue")])
            VStack{
                LocationView(cityName: "Cairo", countryName: "Egypt")
                CurrentDayView(imageName: "cloud.sun.fill", temperature: 20)
                WeekDaysView()
                
                Spacer()
                
                Button {
                    print("btn tapped")
                } label:{
                    ButtonDesignView(text: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                Spacer()
            }
        }
    }
}


struct BackgroundView: View {
    
    var colors:[Color]
    
    var body: some View {
        LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct LocationView: View {
    
    var cityName:String
    var countryName:String
    
    var body: some View{
        Text("\(cityName), \(countryName)")
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding(.top, 20)
    }
}


struct CurrentDayView:View {
    
    var imageName:String
    var temperature:Int
    
    var body: some View{
        VStack(spacing:10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)º")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }.padding(.bottom, 100)
    }
}

struct WeatherDayView: View {
    
    var dayOfWeak:String
    var imageName:String
    var temperature:Int
    
    var body: some View {
        VStack{
            Text(dayOfWeak)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)º")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
        }
    }
}


struct WeekDaysView:View {
    
    var body: some View{
        HStack(spacing: 20){
            
            WeatherDayView(
                dayOfWeak: "FRI",
                imageName: "sun.max.fill",
                temperature: 35
            )
            
            WeatherDayView(
                dayOfWeak: "SAT",
                imageName: "sun.dust.fill",
                temperature: 30
            )
            
            WeatherDayView(
                dayOfWeak: "SUN",
                imageName: "cloud.sun.rain.fill",
                temperature: 28
            )
            
            WeatherDayView(
                dayOfWeak: "MON",
                imageName: "cloud.bolt.rain.fill",
                temperature: 25
            )
            
            WeatherDayView(
                dayOfWeak: "TUE",
                imageName: "cloud.heavyrain.fill",
                temperature: 20
            )
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
