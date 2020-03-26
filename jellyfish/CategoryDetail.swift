//
//  CategoryDetail.swift
//  jellyfish
//
//  Created by Siyuan Zan on 3/21/20.
//  Copyright © 2020 Siyuan Zan. All rights reserved.
//

import SwiftUI
import AVKit
import AVFoundation
//let cv=["Hy","cu","st","sc"]
var player1=AVPlayer(url:URL(fileURLWithPath: ""))
struct player:UIViewControllerRepresentable{
    var c:String
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<player>) {
           
       }
    func makeUIViewController(context: UIViewControllerRepresentableContext<player>) -> AVPlayerViewController{
        let urlc = Bundle.main.path(forResource:c, ofType:"mp4")
        player1=AVPlayer(url:URL(fileURLWithPath: urlc!))
        let controller=AVPlayerViewController()
        controller.player=player1
        controller.showsPlaybackControls = true
        controller.videoGravity = .resize
        
        
        return controller
        
    }
   
}

struct CategoryDetail: View {
    var classDetail:Class
    @State var ifShow=false
    var body: some View {
        ZStack{
            
            player(c:classDetail.video).frame( width:UIScreen.main.bounds.width,height: UIScreen.main.bounds.height*0.95).scaledToFill()
                    .onAppear(){
                        player1.play()
                           }
            
            ZStack{
                Image( systemName: "eye" )
                    .scaleEffect(1.5)
                    .foregroundColor(Color.white)
                    .offset(x:130,y:-350)
                    .opacity(self.ifShow ? 1.0 : 0.5)
            }.onTapGesture {
                self.ifShow.toggle()
            }
            
        
            ZStack{
                Text(self.ifShow ? classDetail.character : "")
                               .font(Font.body.weight(.regular))
                               .tracking(2)
                               .foregroundColor(.white)
                               .padding()
                               .frame(maxHeight: .infinity, alignment: .center)
                
            }

            
            
        }
        .edgesIgnoringSafeArea(.all)
       
    }
}



