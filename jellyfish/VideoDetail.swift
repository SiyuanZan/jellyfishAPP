//
//  VideoDetail.swift
//  jellyfish
//
//  Created by Siyuan Zan on 3/21/20.
//  Copyright © 2020 Siyuan Zan. All rights reserved.
//

import SwiftUI
import AVKit
import AVFoundation

struct VideoDetail: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MovieView: UIViewRepresentable {
    var a:Int
   
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<MovieView>) {
    }

    func makeUIView(context: Context) -> UIView {
    url = Bundle.main.path(forResource:an[a], ofType:"mp4")
        return PlayerClass(frame: .zero)
    }
   

}




class PlayerClass:UIView{

    private let avPlayerLayer=AVPlayerLayer()
    let startTime : CMTime = CMTimeMake(value:10,timescale:1)
    override init(frame:CGRect){
        super.init(frame:frame)
        
        let player = AVPlayer(url: URL(fileURLWithPath: url!))
        avPlayerLayer.videoGravity = .resize
        player.actionAtItemEnd = .none
        player.seek(to: startTime)
        player.play()
       
        avPlayerLayer.player = player
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(playerDidEnd(notification:)),
                                               name: .AVPlayerItemDidPlayToEndTime,
                                               object: player.currentItem)
        layer.addSublayer(avPlayerLayer)
    }
    
    @objc func playerDidEnd(notification: Notification){
        if let avPlayerItem=notification.object as? AVPlayerItem{
            
            avPlayerItem.seek(to: startTime, completionHandler: nil)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init error")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        avPlayerLayer.frame=bounds
    }

    
}
