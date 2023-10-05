//
//  SecondView.swift
//  Food Rescue
//
//  Created by Milan Gupta on 8/31/23.
//

import SwiftUI

let mBackColor = Color(red: 218/255, green: 220/255, blue: 223/255)

struct SecondView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                
                mainBackColor.ignoresSafeArea()
            VStack {
                mBackColor.ignoresSafeArea()
                Image("foodRescueLogo")
                    .resizable()
                    .frame(width: 180, height: 100)
                    .padding(.top, -130)
                
                HStack {
                    NavigationLink(
                        destination: Donation(),
                        label: {
                            Text("Donate Today")
                                .font(.custom("Arial", size: 18))
                                .bold()
                                .padding(.horizontal, 20)
                                .padding(.vertical, 315)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(5)
                        })
                    .frame(width: geometry.size.width / 2.045)
                    
                    NavigationLink(
                        destination: TakeAction(),
                        label: {
                            Text("Take Action")
                                .font(.custom("Arial", size: 18))
                                .bold()
                                .padding(.horizontal, 30)
                                .padding(.vertical, 315)
                                .border(Color.blue, width: 3)
                                .foregroundColor(.blue)
                                .background(mBackColor)
                                .cornerRadius(5)
                        })
                    .frame(width: geometry.size.width / 2)
                }
                .padding(.top, -30)
            }
        }
        }
    }
}
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
