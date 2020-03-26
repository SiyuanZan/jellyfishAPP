//
//  PictureSave.swift
//  jellyfish
//
//  Created by Siyuan Zan on 3/24/20.
//  Copyright © 2020 Siyuan Zan. All rights reserved.
//

import SwiftUI

struct PictureSave: View {
    @Binding  var ifSave:Bool
    @Binding var selectedExamplePic:[Example]
   @State var picSave:[String]=[]
   
    var body: some View {
        VStack{
              ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                ForEach(0..<self.selectedExamplePic.count){ i in
//
//                ZStack{
//                       if self.selectedExamplePic.count>0{
//                        Image(systemName: "trash")
//                        .foregroundColor(Color.white)
//                        .scaleEffect(1.5)
//                        .animation(.default)
//                    }
//                    }
//                .offset(x:150,y:0)
//                .onTapGesture {
//                    self.delete[i]=true
//                    if(self.delete[i]==true){
//                        self.selectedExamplePic.remove(at: i)
//                    }
//
//                    }
//                
//                    }
                 HStack(spacing:0){

                Image(self.selectedExamplePic[i].image)
                .resizable()
                .frame(width:UIScreen.main.bounds.width, height:400)
                .background(Color.black)
                }
                }
                }
        }
        }
        .frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height*1.2)
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)

    }
}

struct PictureSave_Previews: PreviewProvider {
    static var previews: some View {
        PictureSave(ifSave:.constant(false),selectedExamplePic:.constant([Example(title: ["Cotylorhiza Tuberculata","Mild Stinger","Habitat","Identify"], image: "1", content: ["","Harmless to humans.","Very abundant in the Mediterranean Sea, expecially in bays.","The umbrella can measure 30 cm in diameter, it is very rigid and roundish in its centre, where it has a reddish or yellow color. The external part of the manubrium is motile and pulsates vigorously. Under the umbrella, the manubrium resembles a bouquet of flowers, with blue-purple buttons, inserted into stout arms."], index:1,selected:true)]))
    }
}
