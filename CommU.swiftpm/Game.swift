//
//  File.swift
//  CommU
//
//  Created by kevin marinho on 19/04/22.
//

import Foundation
import SwiftUI
import SpriteKit

struct firstGameView : View {
    @State var showSheet: Bool = false
    
    var body: some View{
        ZStack{
            Image("background").ignoresSafeArea()
            VStack(spacing: 30){
                HStack{
                    Image("Balon")
                        .resizable()
                        .frame(width: 300, height: 100)
                        .offset(x:20, y:-110)
                    
                    Image("commuHeadLeft")
                        .resizable()
                        .frame(width: 80, height: 130)
                        .offset(y:-60)
                }
                
                NavigationLink(destination: twoGameView(), label:{
                        Text("children are the future")
                        .font(.system(size: 20))
                        .bold()
                        .frame(width: 300, height: 80)
                        .background(Color(red: 122/255, green: 178/255, blue: 229/255))
                                                    //.shadow(color: .gray, radius: 5, x: 0.5, y: 0.5)
                                                    .foregroundColor(.black)
                                                    .cornerRadius(30)
                    
                })
                
                NavigationLink(destination: mistakeViewOne(), label:{
                        Text("children will be robots")
                        .font(.system(size: 20))
                        .bold()
                        .frame(width: 300, height: 80)
                        .background(Color(red: 122/255, green: 178/255, blue: 229/255))
                                                    //.shadow(color: .gray, radius: 5, x: 0.5, y: 0.5)
                                                    .foregroundColor(.black)
                                                    .cornerRadius(30)
                    
                })
                
                NavigationLink(destination: mistakeViewOne(), label:{
                        Text("babies study to be robots")
                        .font(.system(size: 20))
                        .bold()
                        .frame(width: 300, height: 80)
                        .background(Color(red: 122/255, green: 178/255, blue: 229/255))
                                                    //.shadow(color: .gray, radius: 5, x: 0.5, y: 0.5)
                                                    .foregroundColor(.black)
                                                    .cornerRadius(30)
                    
                })
                
                
            }
            
            Text("1/3")
                .bold()
                .font(.system(size: 20))
                .frame(width: 50, height: 50)
                //.offset(x: 30, y: 300)
                .background(Color(red: 122/255, green: 178/255, blue: 229/255))
                .foregroundColor(.black)
                .cornerRadius(30)
                .offset(x: 150, y: 400)
             

            Text("👶🏾🧑🏾‍🎓🧑🏾‍💻🤖")
                .offset(x:-40,y:-280)
                .font(.system(size: 40))
        }
        .navigationBarHidden(true)
        
    }
    
}

struct twoGameView : View {
    var body: some View{
        ZStack{
            Image("background").ignoresSafeArea()
            VStack(spacing: 30){
                HStack{
                    Image("CommuHeadRight")
                        .resizable()
                        .frame(width: 80, height: 130)
                        .offset(y:-60)
                    
                    Image("BalonLeft")
                        .resizable()
                        .frame(width: 300, height: 100)
                        .offset(x:-20, y:-110)
                    
                }
                
                NavigationLink(destination: mistakeViewTwo(), label:{
                        Text("The finger that saves the planet")
                        .font(.system(size: 20))
                        .bold()
                        .frame(width: 300, height: 80)
                        .background(Color(red: 122/255, green: 178/255, blue: 229/255))
                                                    //.shadow(color: .gray, radius: 5, x: 0.5, y: 0.5)
                                                    .foregroundColor(.black)
                                                    .cornerRadius(30)
                    
                })
                
                NavigationLink(destination: mistakeViewTwo(), label:{
                        Text("take care of your finger")
                        .font(.system(size: 20))
                        .bold()
                        .frame(width: 300, height: 80)
                        .background(Color(red: 122/255, green: 178/255, blue: 229/255))
                                                    //.shadow(color: .gray, radius: 5, x: 0.5, y: 0.5)
                                                    .foregroundColor(.black)
                                                    .cornerRadius(30)
                    
                })
                
                NavigationLink(destination: threeGameView(), label:{
                        Text("take care of your world")
                        .font(.system(size: 20))
                        .bold()
                        .frame(width: 300, height: 80)
                        .background(Color(red: 122/255, green: 178/255, blue: 229/255))
                                                    //.shadow(color: .gray, radius: 5, x: 0.5, y: 0.5)
                                                    .foregroundColor(.black)
                                                    .cornerRadius(30)
                    
                })
                
                
            }
            
            Text("2/3")
                .bold()
                .font(.system(size: 20))
                .frame(width: 50, height: 50)
                //.offset(x: 30, y: 300)
                .background(Color(red: 122/255, green: 178/255, blue: 229/255))
                .foregroundColor(.black)
                .cornerRadius(30)
                .offset(x: 150, y: 400)
            
            
            Text("⛑👇🏽🌍")
                .offset(x:40,y:-280)
                .font(.system(size: 40))
            
        }
        .navigationBarHidden(true)
    }
}


struct threeGameView : View{
    var body: some View{
        ZStack{
            Image("background").ignoresSafeArea()
            VStack(spacing: 30){
                HStack{
                    Image("Balon")
                        .resizable()
                        .frame(width: 300, height: 100)
                        .offset(x:20, y:-110)
                    
                    Image("commuHeadLeft")
                        .resizable()
                        .frame(width: 80, height: 130)
                        .offset(y:-60)
                }
                
                NavigationLink(destination: mistakeViewThree(), label:{
                        Text("lamps make keys and doors")
                        .font(.system(size: 20))
                        .bold()
                        .frame(width: 300, height: 80)
                        .background(Color(red: 122/255, green: 178/255, blue: 229/255))
                                                    //.shadow(color: .gray, radius: 5, x: 0.5, y: 0.5)
                                                    .foregroundColor(.black)
                                                    .cornerRadius(30)
                    
                })
                
                NavigationLink(destination: Congrats(), label:{
                        Text("ideas open doors")
                        .font(.system(size: 20))
                        .bold()
                        .frame(width: 300, height: 80)
                        .background(Color(red: 122/255, green: 178/255, blue: 229/255))
                                                    //.shadow(color: .gray, radius: 5, x: 0.5, y: 0.5)
                                                    .foregroundColor(.black)
                                                    .cornerRadius(30)
                    
                })
                
                NavigationLink(destination: mistakeViewThree(), label:{
                        Text("ideas make doors with keys")
                        .font(.system(size: 20))
                        .bold()
                        .frame(width: 300, height: 80)
                        .background(Color(red: 122/255, green: 178/255, blue: 229/255))
                                                    //.shadow(color: .gray, radius: 5, x: 0.5, y: 0.5)
                                                    .foregroundColor(.black)
                                                    .cornerRadius(30)
                    
                })
                
                
            }
            
            Text("3/3")
                .bold()
                .font(.system(size: 20))
                .frame(width: 50, height: 50)
                //.offset(x: 30, y: 300)
                .background(Color(red: 122/255, green: 178/255, blue: 229/255))
                .foregroundColor(.black)
                .cornerRadius(30)
                .offset(x: 150, y: 400)
            
            
            Text("💡🔑🚪")
                .offset(x:-40,y:-280)
                .font(.system(size: 40))
        }
        
        .navigationBarHidden(true)
    }
}

struct Congrats : View{
    @State var scaleAnimate: CGFloat = 1.0
    var body: some View{
        ZStack{
            Image("background").ignoresSafeArea()
            VStack(spacing: 210){
                GifImage("commuHappyCloseAyesG")
                 .frame(width: 100, height: 220)
                 .offset(y:30)
                
                Text("Congratulations 🎉 🥳, you managed to decipher all the sentences sent by Commu. Now he can go home with his duty done...")
                    .font(.system(size: 22))
                    .offset(y:-20)
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: Final(), label:{
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
        .navigationBarHidden(true)
    }
}


struct Final : View{
    @State var scaleAnimate: CGFloat = 1.0
    var body: some View{
        ZStack{
            Image("background").ignoresSafeArea()
            VStack(spacing: 40){
                HStack{
                    ZStack{
                        Image("Balon")
                            .offset(x:30,y:-30)
                        
                        Text("The essence of the word \n“Communication” translates to “Make common”.")
                            .font(.system(size: 21))
                            //.bold()
                            .offset(x: 20, y: -30)
                            .multilineTextAlignment(.center)
                    }
                    
                    Image("alienTalkMenu")
                    
                }
                HStack{
                    Image("faceThree")
                        .offset(y: 30)
                    ZStack{
                        Image("BalonLeft")
                            .resizable()
                            .frame(height: 150)
                            .offset(x:-15,y: -25)
                        
                        Text("It is through the act of \ncommunicating that human beings \ncan express their feelings, thoughts and responses.")
                            .font(.system(size: 21))
                           // .bold()
                            .offset(y: -30)
                            .multilineTextAlignment(.center)
                    }
                    
                }
                HStack{
                    ZStack{
                        Image("Balon")
                            .offset(y:-20)
                        
                        Text("That is, to relate to the \nenvironment in where they live.")
                            .font(.system(size: 21))
                           // .bold()
                            .offset(x: -10,y:-30)
                            .multilineTextAlignment(.center)
                    }
                    
                    Image("faceTwo")
                    
                }
                HStack{
                    Image("alienR")
                    ZStack{
                        Image("BalonLeft")
                            .resizable()
                            .frame(height: 150)
                            .offset(x:-30)
                        
                        Text("Communication is, above all, a way \nto establish contact, keep updates \nand share knowledge. \nKeep communicating!")
                            .font(.system(size: 20))
                           // .bold()
                            .offset(x: -10,y:-3)
                            .multilineTextAlignment(.center)
                    }
                    
                    
                }
                
                NavigationLink(destination: Home(), label:{
                    Text("PLAY AGAIN")
                        .font(.system(size: 20))
                        .bold()
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
