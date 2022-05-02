//
//  File.swift
//  CommU
//
//  Created by kevin marinho on 19/04/22.
//

import Foundation
import SwiftUI
import SpriteKit

struct SecondView : View{
@State var scaleAnimate: CGFloat = 1.0
    
    var body: some View{
        ZStack{
            Image("background").ignoresSafeArea()
            VStack{
                ZStack{
                    Image("yellowBalon")
                        .offset(x:-50, y:-100)
                    
                    Image("faceOne")
                        .offset(x:-120, y:-50)
                }
                ZStack{
                    Image("orangeBalon")
                        .offset(x:70, y:-150)
                    
                    Image("faceTwo")
                        .offset(x:140,y: -130)
                }
                ZStack{
                    Image("balonPurple")
                        .offset(x:-80, y:-220)
                    
                    Image("faceThree")
                        .offset(x:-150, y: -210)
                }
                
                
                    .navigationBarHidden(true)
            }
            VStack(spacing: 280){
                Text("Communication is a process that envolves an exchange of information between two or more  interlocutors through mutually understandable semiotic signs and rules...")
                    .font(.system(size: 22))
                    .offset(y:510)
                    .multilineTextAlignment(.center)



                Text("In this way, any means of exchanging information is already a form of communication…")
                    .font(.system(size: 22))
                    .offset(y:240)
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: ThirdView(), label:{
                    Text("NEXT")
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

struct ThirdView : View{
    @State var scaleAnimate: CGFloat = 1.0
    var scene : SKScene{
        let scene = commuScene()
        scene.size = CGSize(width: 256, height: 256)
       // scene.backgroundColor = .clear
        scene.scaleMode = .fill
        //scene.anchorPoint = CGPoint(x:0, y: 0)
        return scene
    }
    
    var body: some View{
        ZStack{
            Image("background").ignoresSafeArea()
            VStack(spacing: 60){
                HStack(spacing: 40){
//                    SpriteView(scene: scene, options: [.allowsTransparency])
                       GifImage("commuNormalG")
                        .frame(width: 100, height: 220)
                        .offset(y:-50)
                    
                        Image("message")
                        .offset(x:0,y:-50)
                    
                        GifImage("world")
                       // .resizable()
                        .offset(y:-50)
                        .frame(width: 100, height: 100)
                }
                
                Text("Commu is an alien who is trying to send a message that everyone on earth could decipher, and he decided to send it through Emojis 😍 (one of the most used means of communication on the little blue planet 🌎)")
                    //.offset(y:-100)
                    .font(.system(size: 22))
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: fourthView(), label:{
                    Text("NEXT")
                        .font(.system(size: 20, weight: .semibold, design: .serif))
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
        .navigationBarHidden(true)
    }
    
}

struct fourthView: View {
    @State var scaleAnimate: CGFloat = 1.0
    
    var body: some View{
        ZStack{
            Image("background").ignoresSafeArea()
            VStack(spacing: 180){
                HStack{
                    Image("Balon")
                        .resizable()
                        .frame(width: 300, height: 100)
                        .offset(x:20, y:10)
                    
                    Image("commuHeadLeft")
                        .resizable()
                        .frame(width: 80, height: 130)
                        .offset(y:70)
                }
                
                
                Text("Your mission is to find out what message Commu wants to get across. Experts have discovered some possibilities for you to understand the message...")
                    .offset(y:40)
                    .font(.system(size: 22))
                    .multilineTextAlignment(.center)
                
                
                NavigationLink(destination: firstGameView(), label:{
                    Text("START")
                        .font(.system(size: 20, weight: .semibold, design: .serif))
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
            
            Text("👽 🛸 🌍🔭✉️")
                .offset(x:-40,y:-260)
                .font(.system(size: 40))
            
            
        }
        .navigationBarHidden(true)
    }
    
}

