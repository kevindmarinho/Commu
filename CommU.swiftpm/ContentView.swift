import SwiftUI
import SpriteKit
import Combine
import GameKit
import GameplayKit

struct Navigation: View {
    @State private var isLoading = false
    
    var body: some View{
        NavigationView{
            ZStack(){
                Image("background").ignoresSafeArea()
                
//                GifImage("commuNormalG")
//                SpriteView(scene: scene, options: [.allowsTransparency])
//                    //.padding()
//                    .offset(x: 20, y: 150)
//                    .frame(width: 256, height: 256)
//                    .ignoresSafeArea()
//                    .background(.clear)
                
                Image("Name")
                    .resizable()
                    .offset(y:-330)
                    .frame(width: 320.0, height: 120.0)
                
               // Image("commuNormal")
                
                NavigationLink(destination: Home(), label:{
                        Text("GET START")
                        .font(.system(size: 25))
                        .bold()
                        .frame(width: 220, height: 80)
                        .background(Color(red: 122/255, green: 178/255, blue: 229/255))
                                                    //.shadow(color: .gray, radius: 5, x: 0.5, y: 0.5)
                                                    .foregroundColor(.black)
                                                    .cornerRadius(30)
                    
                })
                if isLoading{
                    ZStack{
                        Image("background").ignoresSafeArea()
                        
                        VStack(spacing: 80){
                            
                            Image("Name")
                                .resizable()
                                .offset(y:-280)
                                .frame(width: 320.0, height: 120.0)
                                
                            
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                                .scaleEffect(3)
                            
                        }
                        
                    }.transition(.scale)
                     
                }
            }.onAppear{startFakeNetworkCall()}
        }
    }
    
    func startFakeNetworkCall(){
            isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            isLoading = false
        }
    }
}


