//
//  picture.swift
//  jellyfish
//
//  Created by Siyuan Zan on 3/23/20.
//  Copyright © 2020 Siyuan Zan. All rights reserved.
//

import SwiftUI
struct Example{
    var title:[String]
    var image:String
    var content:[String]
    var index:Int
    var selected:Bool
}

class AppModel3: ObservableObject {
    var examples=[Example]()
    
    init(){
        let exa1=Example(title: ["Cotylorhiza Tuberculata","Mild Stinger","Habitat","Identify"], image: "1", content: ["","Harmless to humans.","Very abundant in the Mediterranean Sea, expecially in bays.","The umbrella can measure 30 cm in diameter, it is very rigid and roundish in its centre, where it has a reddish or yellow color. The external part of the manubrium is motile and pulsates vigorously. Under the umbrella, the manubrium resembles a bouquet of flowers, with blue-purple buttons, inserted into stout arms."], index:1,selected:false)
        examples.append(exa1)
        let exa2=Example(title: ["Marivagia Stellata","Mild Stinger","Habitat","Identify"], image: "2", content: ["","It is not a stinger.","Discovered in 2010 along the coasts of Israel by the marine scientist Bella Galil. It comes from the Red Sea, where it probably passed unobserved, and entered the Mediterranean from the Suez Canal.","The name of the species (stellata) describes star-like reddis spots that adorn the umbrella. It is recorded just from the Eastern most part of the Mediterranean Sea, but it might expand in other seas."], index:2,selected:false)
        examples.append(exa2)
        let exa3=Example(title: ["Aequorea forskalea","Mild Stinger","Habitat","Identify"], image: "3", content: ["","Harmless to humans.","Never very abundant along our shores, even though it can be in large swarms locally, especially in spring.","It is a hydromedusa that buds from polyps that live on the sea bottom. It does not have a large size, reaching a max of 10 cm in diameter. It is easily distinguished from other jellyfish because it has many radial canals that link the centre and the margin of the flat bell. The mouth and the manubrium are inserted in a gelatinous bulg that originates from the centre of the bell and projects downwards."], index:3,selected:false)
        examples.append(exa3)
        let exa4=Example(title: ["Aurelia aurita","Mild Stinger","Habitat","Identify"], image: "4", content: ["","Harmless to humans.","Aurelia lives in all oceans of the northern hemisphere, where it can be very abundant.","The umbrella can reach 30-40 cm, with marginal tentacles, discoidal, withish, with gonads arranged in four circles that are very evident through the transparent bell. The manubrium has four long oral arms. Many radial canals link the centre and the margin of the umbrella."], index:4,selected:false)
        examples.append(exa4)
        let exa5=Example(title: ["Cotylorhiza Tuberculata","Stinger","Habitat","Identify"], image: "5", content: ["","Its venom is not deadly, but its stings are painful. ","Present in the mid and northern seas of Italy, it is increasingly more frequent along our coasts.","Relatively small, transparent, with cubic umbrella measuring from 4 to 5 cm, it is armed with 4 long tentacles. It swims vigorously and moves quickly. Just as Pelagia, it is typical of the Mediterranean and is one of the most stinging species of our seas."], index:5,selected:false)
        examples.append(exa5)
        let exa6=Example(title: ["Cassiopea andromeda","Stinger","Habitat","Identify"], image: "6", content: ["","It is not very dangerous.","It entered the Mediterranean Sea through the Suez Canal, and is expanding through the Turkis coasts. In 2010 it was recorded at Malta, and so it reached the Italian waters. It is mostly found on sandy bottoms.","The diamater can be 30 cm maximum, the jellyfish usually rests on the sea bottom, with the umbrella towards the bottom, whereas mouth and tentacles are upwards. For this reason, the species is called the upside down jellyfish. It has this posture because there are unicellular algae in its tissues, similar to the symbiotic algae of tropical corals, and they are also symbiotic with the jellyfish that, to make them function properly, has to expose them to light."], index:6,selected:false)
        examples.append(exa6)
        let exa7=Example(title: ["Catostylus tagi","Stinger","Habitat","Identify"], image: "7", content: ["","It is not a bad stinger.","It is common along Portuguese coast and, in general, throughout the Atlantic Ocean, but it was never recorded from the Mediterranean Sea, until Maria Ghelia photographed it in 2010, in the waters of the Pantelleria Island.","It is similar to Rhyzostoma pulmo but it does not have the typical bluish-purple umbrellar margin typical of this species. It is a beautiful animal and, in some countries, it is used as food."], index:7,selected:false)
        examples.append(exa7)
        let exa8=Example(title: ["Olindias phosphorica","Stinger","Habitat","Identify"], image: "8", content: ["","Its stings are not severe, but they are painful enough to spoil your day.","In past years it was very abundant along the Tunisian coast, where it caused problems to the tourist industry.","It is a hydromedusa, just as Aequorea forskalea, but it is a stinger even if it is smaller than Aequorea, reaching 6 cm in umbrellar diameter. It buds laterally from polyps that live on the sea bottom. After a period of rest on the bottom, it pulsates vigorously towards the surface, and then falls towards the bottom again, with its tentacles extended through the water."], index:8,selected:false)
        examples.append(exa8)
        let exa9=Example(title: ["Phyllorhiza punctata","Mild Stinger","Habitat","Identify"], image: "9", content: ["","It does not inflict painful stings.","It originates from Australia. In 2009 a specimen was seen for the first time along the Italian coast, at Tavolara Island, in Sardinia.","Withish or blusish, and covered with yellow spots, hence the name: the spotted jellyfish. It is placed in the same family of Rhizostoma, and can reach the size of this large jelly (even more than 50 cm of bell diameter) sharing also its general structure. It feeds on crustacean plankton and, probably, also of fish eggs and larvae."], index:9,selected:false)
        examples.append(exa9)
        let exa10=Example(title: ["Rhopilema nomadica","Stinger","Habitat","Identify"], image: "10", content: ["","A bad stinger.","The genus Rhopilema is typical of the Indo-Pacific ocean and has no Atlantic or Mediterranean representatives. It never reached the Italian seas, possibly because the temperatures are not high enough for this tropical species.","It does not pass unnoticed, since it can reach 80 cm in diameter and can form extensive swarms. The current global warming might pave its way towards the expansion of this species in the Western Mediterranean."], index:10,selected:false)
        examples.append(exa10)
//        let exa11=Example(title: ["Rhopilema nomadica","Stinger","Habitat","Identify"], image: "10", content: ["","A bad stinger.","The genus Rhopilema is typical of the Indo-Pacific ocean and has no Atlantic or Mediterranean representatives. It never reached the Italian seas, possibly because the temperatures are not high enough for this tropical species.","It does not pass unnoticed, since it can reach 80 cm in diameter and can form extensive swarms. The current global warming might pave its way towards the expansion of this species in the Western Mediterranean."], index:11)
//        examples.append(exa11)
    }
    
}
struct ExampleCell: View {
    @Binding var showModal:Bool
    @Binding var selectedExample:Example?
   
    //////////////////////////
//    @Binding var fillheart:Bool
    var example:Example
    
    var body: some View {
        
        
        Button(action: {
            
            self.selectedExample = self.example
            self.showModal.toggle()
          
        }){
            VStack{
                
                HStack(spacing:0){
                    ZStack{ Image(self.example.image).resizable().frame(width:UIScreen.main.bounds.width/2)
                        Text(self.example.title[0])
                            .foregroundColor(.white)
                            .font(Font.custom("Avenir Next",size: 12))
                            .frame(width:UIScreen.main.bounds.width/2,height:50)
                            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.609562286)))
                            .border(Color.black, width: 3)
                            .offset(y:115)
                        
                        
                        
                    }
                    
                }.frame(height:280)
                
                
            }
        }.buttonStyle(PlainButtonStyle())
    }
    
    
    
}

struct picture: View {
    @ObservedObject var appModel = AppModel3()
    @Binding var showModal:Bool
    @Binding var selectedExample: Example?
    @State var ifSave=false
    @Binding var selectedExamplePic:[Example]
    var body: some View {
        ZStack {
            
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing:0){
                    
                    
                    ForEach(0..<self.appModel.examples.count/2){ i in
                        HStack(spacing:0){
                            ExampleCell(showModal:self.$showModal,selectedExample:self.$selectedExample,example:self.appModel.examples[2*i])
                            
                            ExampleCell(showModal:self.$showModal,selectedExample:self.$selectedExample, example:self.appModel.examples[2*i+1])
                            
                        }
//                        .onAppear(){
//                            if (self.appModel.examples[2*i].selected==true){
//                                self.selectedExamplePic.append(self.appModel.examples[2*i])
//
//                            }
//                            if(self.appModel.examples[2*i].selected==true){
//
//                                self.selectedExamplePic.append(self.appModel.examples[2*i+1])
//                            }
//                            print(self.selectedExamplePic)
//
//                        }
                    }
                }
                
                
            }
            
            ZStack{
                Image(systemName: self.ifSave ? "heart.circle.fill": "heart.circle")
                    .scaleEffect(1.8)
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.8)))
                    .opacity(0.8)
            }    .offset(x:150,y:-350)
                    .sheet(isPresented: self.$ifSave) {
                        PictureSave(ifSave:self.$ifSave,selectedExamplePic:self.$selectedExamplePic)
            }
            .onTapGesture {
                self.ifSave=true
            }
            
            
            if self.showModal {
                PictureDetail(picDetail: self.selectedExample!.self, showModal: self.$showModal,selectedExamplePic:self.$selectedExamplePic)
                    //                .transition(.move(edge: self.showModal ? .bottom :))
                    .offset(y: self.showModal ? 0: UIScreen.main.bounds.height)
                    .animation(.easeOut)
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct picture_Previews: PreviewProvider {
    static var previews: some View {
        picture(showModal:.constant(false),selectedExample:.constant(Example(title: ["Cotylorhiza Tuberculata","Mild Stinger","Habitat","Identify"], image: "1", content: ["","Harmless to humans.","Very abundant in the Mediterranean Sea, expecially in bays.","The umbrella can measure 30 cm in diameter, it is very rigid and roundish in its centre, where it has a reddish or yellow color. The external part of the manubrium is motile and pulsates vigorously. Under the umbrella, the manubrium resembles a bouquet of flowers, with blue-purple buttons, inserted into stout arms."], index:1,selected:false)),selectedExamplePic:.constant([]))
    }
}
