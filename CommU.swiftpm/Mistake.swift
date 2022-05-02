//
//  File.swift
//  CommU
//
//  Created by kevin marinho on 19/04/22.
//

import Foundation
import SwiftUI
import SpriteKit

struct mistakeViewOne : View{
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
            VStack(spacing: 80){
                SpriteView(scene: scene, options: [.allowsTransparency])
                    .frame(width: 300, height: 300)
                    .offset(x: 50, y: -100)
                
                Text("unfortunately you got it wrong 😔 but don't be sad 😄 and try again to help Commu!")
                    .font(.system(size: 25))
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: firstGameView(), label:{
                    Text("TRY AGAIN")
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

struct mistakeViewTwo : View{
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
            VStack(spacing: 80){
                
                SpriteView(scene: scene, options: [.allowsTransparency])
                    .frame(width: 300, height: 300)
                    .offset(x: 50, y: -100)
                
                Text("unfortunately you got it wrong 😔 but don't be sad 😄 and try again to help Commu!")
                    .font(.system(size: 25))
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: twoGameView(), label:{
                    Text("TRY AGAIN")
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

struct mistakeViewThree : View{
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
            VStack(spacing: 80){
                
                SpriteView(scene: scene, options: [.allowsTransparency])
                    .frame(width: 300, height: 300)
                    .offset(x: 50, y: -100)
                
                Text("unfortunately you got it wrong 😔 but don't be sad 😄 and try again to help Commu!")
                    .font(.system(size: 25))
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: threeGameView(), label:{
                    Text("TRY AGAIN")
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


