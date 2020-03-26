//
//  PictureDetail.swift
//  jellyfish
//
//  Created by Siyuan Zan on 3/22/20.
//  Copyright © 2020 Siyuan Zan. All rights reserved.
//

import SwiftUI

struct PictureDetail: View {
    @State var picDetail:Example
    @State var picSave:[String]=[]
    @Binding var showModal:Bool
    @State var fillheart=false
    @Binding var selectedExamplePic:[Example]
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            
            VStack(){
                Image(self.picDetail.image)
                    .resizable()
                    .frame(width:UIScreen.main.bounds.width, height:400)
                    .background(Color.black)
                
            }
            Button(action: {
                self.showModal=false
            }){
                ZStack{
                    HStack{
                        
                        Image(systemName: "xmark.circle")
                            .scaleEffect(1.5)
                            .foregroundColor(Color.white)
                            .opacity(self.showModal ? 0.5 : 1.0)
                    }
                }
                
            }
            .offset(x:130,y:-350)
            
            Button(action: {
                for i in 0..<self.selectedExamplePic.count{
                    self.picSave.append(self.selectedExamplePic[i].title[0])
                }
                self.picDetail.selected.toggle()
             if (self.picDetail.selected==true){
//                for i in 0..<self.selectedExamplePic.count{
                if self.picSave.contains(self.picDetail.title[0]){
                           
                     }
                    else{
                        self.selectedExamplePic.append(self.picDetail)
                        print(  self.selectedExamplePic)
                     }
                   }
          
            }){
                
                    HStack{
                        
                        Image(systemName:  self.picDetail.selected ? "heart.fill": "heart")
                            .scaleEffect(1.5)
                            .foregroundColor(Color.white)
                            .opacity(self.showModal ? 0.5 : 1.0)
                           
                    }
                
                
            } .offset(x:-130,y:-366)
          
            
        
            
            Spacer()
            Spacer()
            VStack{
                Text(self.picDetail.title[0])
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .font(Font.title.weight(.heavy))
                    .padding()
                    .frame(width:UIScreen.main.bounds.width-10,alignment:.leading)
                ForEach(1..<picDetail.title.count){ i in
                    VStack{
                        Text(self.picDetail.title[i])
                            .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                            .font(Font.headline.weight(.heavy))
                            .padding()
                            .frame(width:UIScreen.main.bounds.width-20,alignment:.leading)
                        Text(self.picDetail.content[i])
                            .foregroundColor(.white)
                            .font(Font.body.weight(.regular))
                            .tracking(2)
                            .padding()
                            .frame(width:UIScreen.main.bounds.width-20,alignment:.leading)
                        
                        
                    }
                    
                    
                }
                
            }
            
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
        
       
    }
}

struct PictureDetail_Previews: PreviewProvider {
    static var previews: some View {
        PictureDetail(picDetail: Example(title: ["Cotylorhiza Tuberculata","Mild Stinger","Habitat","Identify"], image: "1", content: ["","Harmless to humans.","Very abundant in the Mediterranean Sea, expecially in bays.","The umbrella can measure 30 cm in diameter, it is very rigid and roundish in its centre, where it has a reddish or yellow color. The external part of the manubrium is motile and pulsates vigorously. Under the umbrella, the manubrium resembles a bouquet of flowers, with blue-purple buttons, inserted into stout arms."], index:1,selected:true), showModal: .constant(false), selectedExamplePic:.constant([]))
    }
}

//        .frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height*1.2)
