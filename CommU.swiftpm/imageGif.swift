//
//  File.swift
//  CommU
//
//  Created by kevin marinho on 19/04/22.
//

import Foundation
import SwiftUI
import WebKit
import SpriteKit
import GameplayKit

struct GifImage: UIViewRepresentable{
    private let name: String

    init(_ name: String){
        self.name = name
    }

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data (contentsOf: url)
        
        uiView.load(data, mimeType: "image/gif", characterEncodingName: "UTF-8", baseURL: url.deletingLastPathComponent())
        uiView.isOpaque=false
        //uiView.reload()
    }

}

//struct GifImage_Previews: PreviewProvider{
//    static var previews: some View{
//        GifImage("commuNormalG")
//    }
//}


public class commuScene: SKScene{
    static var shared = commuScene()
    
    public override func didMove(to view: SKView) {
        
        let commu = SKSpriteNode(imageNamed: "sadCommu.png")
        
        commu.run(.repeatForever(.animate(with: [
            
            SKTexture(imageNamed: "sadCommu.png"),
            SKTexture(imageNamed: "sadCloseAyes.png"),
            
        ], timePerFrame: 0.9)))
        
        commu.position = CGPoint(x: 90, y: 100)
        view.allowsTransparency = true
        self.backgroundColor = .clear
        view.alpha = 1
        view.isOpaque = true
        view.backgroundColor = SKColor.clear.withAlphaComponent(0.0)
        
        
        
        addChild(commu)
    
    }

}

public class commuHappyScene: SKScene{
    static var shared = commuScene()
    
    public override func didMove(to view: SKView) {
        
        let commu = SKSpriteNode(imageNamed: "sadCommu.png")
        
        commu.run(.repeatForever(.animate(with: [
            
            SKTexture(imageNamed: "sadCommu.png"),
            SKTexture(imageNamed: "sadCloseAyes.png"),
            
        ], timePerFrame: 0.9)))
        
        commu.position = CGPoint(x: 90, y: 100)
        view.allowsTransparency = true
        self.backgroundColor = .clear
        view.alpha = 1
        view.isOpaque = true
        view.backgroundColor = SKColor.clear.withAlphaComponent(0.0)
        
        
        
        addChild(commu)
    
    }

}




