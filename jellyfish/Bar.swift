//
//  Bar.swift
//  jellyfish
//
//  Created by Siyuan Zan on 3/20/20.
//  Copyright © 2020 Siyuan Zan. All rights reserved.
//

import SwiftUI

struct Bar: View {
    @Binding var indexbar:Int
    var body: some View {
        ZStack{
            Capsule() .fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.3978756421)))
                .frame(width:UIScreen.main.bounds.width-30,height:60)
                .cornerRadius(5)
           
            
            HStack(spacing:35){
                
                VStack{
                    Image(systemName: self.indexbar == 0  ? "square.fill" : "square").resizable()
                        .foregroundColor(.black)
                        .frame(width:30,height: 30)
                    Text( "Home").fontWeight(.light).font(.system(size:14))
                        .foregroundColor(.black)
                }
                .onTapGesture {
                    self.indexbar=0
                }
                VStack{
                    Image(systemName:self.indexbar == 1  ? "circle.fill" : "circle").resizable()      .foregroundColor(.black)
                        .frame(width:30,height: 30)
                    
                    Text( "Classes").fontWeight(.light).font(.system(size:14))
                        .foregroundColor(.black)
                }
                .onTapGesture {
                    self.indexbar=1
                }
                VStack{
                    Image(systemName:self.indexbar == 2  ? "triangle.fill" : "triangle").resizable()
                        .foregroundColor(.black)
                        .frame(width:30,height: 30)
                    Text( "Species").fontWeight(.light).font(.system(size:14))
                        .foregroundColor(.black)
                }
                .onTapGesture {
                    self.indexbar=2
                }
                VStack{
                    Image(systemName:self.indexbar == 3  ? "magnifyingglass.circle.fill" :"magnifyingglass.circle").resizable()
                        .foregroundColor(.black)
                        .frame(width:30,height: 30)
                    Text( "Search").fontWeight(.light).font(.system(size:14))
                        .foregroundColor(.black)
                }
                .onTapGesture {
                    self.indexbar=3
                }
                
                
            }.padding(.top,8)
                .frame(width:UIScreen.main.bounds.width-30)
            
            
        }
    }
}

struct Bar_Previews: PreviewProvider {
    static var previews: some View {
        Bar(indexbar: .constant(0))
    }
}
