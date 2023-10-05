//
//  ContentView.swift
//  Food Rescue
//
//  Created by Milan Gupta on 8/27/23.
//

import SwiftUI


let mainBackColor = Color(red: 218/255, green: 220/255, blue: 223/255)
    
struct ContentView: View {
    var body: some View {
        
        NavigationView{
            ZStack {
                mainBackColor.ignoresSafeArea()
                // this VStack is for the introduction page
                VStack{
                    VStack{
                        Image("foodRescueLogo")
                            .resizable()
                            .frame(width: 180, height: 100)
                            .padding(.top, -20)
                    }
                        
                    HStack{
                        Text("Help your communtity combat the battle of hunger today.")
                            .fontWeight(.bold)
                            .font(.custom("Arial", size: 60))
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 25)
                            .padding(.top, -2)
                        Spacer()
                    }
                    Spacer()
                    
                    NavigationLink(
                        destination: SecondView(),
                        label: {
                            Text("Get Started")
                                .font(.custom("Arial", size: 23))
                                .font(.body)
                                .bold()
                                .foregroundColor(.white)
                                .padding(.horizontal, 100)
                                .padding(.vertical, 40)
                                .background(Color.blue)
                                .cornerRadius(20)
                        })
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
  
