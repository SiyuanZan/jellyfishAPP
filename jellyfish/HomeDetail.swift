//
//  HomeDetail.swift
//  jellyfish
//
//  Created by Siyuan Zan on 3/20/20.
//  Copyright © 2020 Siyuan Zan. All rights reserved.
//

import SwiftUI

struct HomeDetail: View {
    
    var jellyfishdetail:Jellyfish
    var jfdetail:Jfdetail
    var body: some View {
        NavigationView{
            
            ScrollView(.vertical,showsIndicators: false) {
                VStack(spacing:0){
                    ScrollView(.horizontal,showsIndicators: true) {
                        HStack(spacing:0){
                            ForEach(0..<jfdetail.image.count){ i in
                                
                                Image(self.jfdetail.image[i])
                                    .resizable()
                                    .frame(width:UIScreen.main.bounds.width, height:400)
                                    .background(Color.black)
                            }
                        }
                    }
                    
                    Spacer()
                    Spacer()
                    Text(jellyfishdetail.content)
                        //                        .font(Font.body.weight(.regular))
                        //                        .tracking(2)
                        //                        .foregroundColor(.black)
                        //                        .padding()
                        //
                        //                        .frame(maxHeight: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                        .font(Font.body.weight(.regular))
                        .tracking(2)
                        //                        .background(jfdetail.color)
                        .padding()
                        .frame(width:UIScreen.main.bounds.width-20,alignment:.leading)
                    
                    ForEach(0..<jfdetail.link.count){ i in
                        VStack(spacing:0){
                            Button(action: {
                                
                                UIApplication.shared.open(self.jfdetail.link[i])
                            }) {

                                Text("Reference Link"+"\(i+1)")
                                .foregroundColor(self.jfdetail.color)
//                                .font(Font.headline.weight(.heavy))
                                .tracking(2)
                                .padding()
                              

                            }
                            .frame(width:UIScreen.main.bounds.width-20,height:50,alignment: .center)
                            
                        }
                    }
                    
                }
                
            }.background(Color.black)
            .navigationBarTitle(Text(jellyfishdetail.name))
        }  .edgesIgnoringSafeArea(.all)
         
        
    }
    
}



