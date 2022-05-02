//
//  File.swift
//  CommU
//
//  Created by kevin marinho on 19/04/22.
//

import Foundation
import SwiftUI

struct Home: View{
    @State var scale: CGFloat = 2
    @State var scaleAnimate: CGFloat = 1.0
    
    var body: some View{
        ZStack{
            Image("background").ignoresSafeArea()
            HStack{
                Image("Balon")
                    .offset(y:-160)
                
                Image("alienTalkMenu")
                    .resizable()
                    .frame(width: 35.0, height: 35.0)
                    .offset(y:-50)
                    .scaleEffect(scale)
                    .animation(Animation.easeIn(duration: 2).repeatForever())
                    .onAppear{
                        self.scale += 0.4
                    }
                    .navigationBarHidden(true)
            }
            
            HStack{
                Image("alienR")
                    .resizable()
                    .frame(width: 35.0, height: 35.0)
                    .offset(x:15, y: 60)
                    .scaleEffect(scale)
                    .animation(Animation.easeIn(duration: 2).repeatForever())
                    .onAppear{
                        self.scale += 0.4
                    }
                
                Image("BalonBig")
                    .offset(x:-20,y:90)
            }
            VStack(spacing: 200){
                Text("WELCOME TO COMMU")
                    .font(.system(size: 30))
                    .offset(x:-35, y:130)
                    .frame(width:300)
                
                
                Text("A DIFFERENT COMMUNICATION EXPERIENCE...")
                    .font(.system(size: 30))
                    .offset(x:60, y: 40)
                    .frame(width:270)
                    
                NavigationLink(destination: SecondView(), label: {
                        
                        Text("GO!")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .frame(width: 80, height: 80)
                            .background(Color(red: 122/255, green: 178/255, blue: 229/255))
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.black)
                                    .scaleEffect(scaleAnimate)
                                    .opacity(Double(2 - scaleAnimate))
                                    .animation(Animation.easeOut(duration: 1).repeatForever(autoreverses: false))
                            ).onAppear{self.scaleAnimate += 1}
                    
                })
               
            }
            
        }
    }
    
}
