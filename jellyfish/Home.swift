//
//  Home.swift
//  jellyfish
//
//  Created by Siyuan Zan on 3/20/20.
//  Copyright © 2020 Siyuan Zan. All rights reserved.
//

import SwiftUI

let an=["Video2","video5","video4","video3"]
var url = Bundle.main.path(forResource:"video1", ofType:"mp4")
struct Jellyfish{
     var name:String
     var number:Int
     var image:String
     var content:String
     var jfdetail:Jfdetail
}
struct Jfdetail{
    var color:Color
    var image:[String]
    var link:[URL]
}
class AppModel: ObservableObject {
    var jellyfishs=[Jellyfish]()
    
    init() {
        
        let jfdetail1=Jfdetail(color:Color(#colorLiteral(red: 0.4280261993, green: 0.848928988, blue: 0.843721807, alpha: 1)), image:["lifecycle1"], link: [URL(string:"https://youtu.be/U7aqO1L8gXA")!,URL(string:"https://www.thoughtco.com/life-cycle-of-a-jellyfish-4112280")!])
        let jellyfish1=Jellyfish( name:"LIFE CYCLE",number:0, image:"", content:"Jellyfish have a stalked (polyp) phase, when they are attached to coastal reefs, and a jellyfish (medusa) phase, when they float among the plankton. The medusa is the reproductive stage; their eggs are fertilised internally and develop into free-swimming planula larvae. After a brief period floating about in surface waters, the larvae settle to the sea floor, attaching themselves at one end. There they develop into polyps and begin to feed and grow. In spring, some of the polyps start to bud off immature jellyfish known as ephyra larvae. These grow into mature jellyfish.",jfdetail:jfdetail1)
        jellyfishs.append(jellyfish1)
        
        
         let jfdetail2=Jfdetail(color:Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), image:["anatomy1","anatomy2"], link: [URL(string:"https://animalcorner.org/jellyfish-anatomy/")!,URL(string:"https://en.wikipedia.org/wiki/Jellyfish")!])
        let jellyfish2=Jellyfish(name:"ANATOMY",number:1,image:"Cubozoa",  content:"Jellyfish are radially symmetrical invertebrates easily characterized by their bell, or medusa, shape. Features include a simple nerve net with sensory cells; a gut cavity with one opening for food, waste, and sex gametes; a layer of jelly, or mesoglea; and several oral arms and tentacles radiating from the gut area. Jellyfish consist of 96% water and range in diameter from 2 cm to 2 m",jfdetail:jfdetail2)
         jellyfishs.append(jellyfish2)
        let jfdetail3=Jfdetail(color:Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)), image:["locomotion"], link: [URL(string:"https://youtu.be/qlgGsjw3LRE")!,URL(string:"https://oxfordre.com/neuroscience/view/10.1093/acrefore/9780190264086.001.0001/acrefore-9780190264086-e-147")!])
        let jellyfish3=Jellyfish(name:"LOCOMOTION",number:2,image:"Cubozoa",  content:"jellyfish move through the water by radially expanding and contracting their bell-shaped bodies to push water behind them. They pause between the contraction and expansion phases to create two vortex rings. Muscles are used for the contraction of the body, which creates the first vortex and pushes the animal forward, but the mesoglea is so elastic that the expansion is powered exclusively by relaxing the bell, which releases the energy stored from the contraction. Meanwhile, the second vortex ring starts to spin faster, sucking water into the bell and pushing against the centre of the body, giving a secondary and free boost forward.",jfdetail:jfdetail3)
         jellyfishs.append(jellyfish3)
        
        let jfdetail4=Jfdetail(color:Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)), image:["diet1","diet2","diet3"], link: [URL(string:"https://youtu.be/FUbomf0G494")!])
        let jellyfish4=Jellyfish(name:"DIET",number:3,image:"Cubozoa",  content:"Jellyfish are like other cnidarians generally carnivorous (or parasitic), feeding on planktonic organisms, crustaceans, small fish, fish eggs and larvae, and other jellyfish, ingesting food and voiding undigested waste through the mouth. They hunt passively using their tentacles as drift lines, or sink through the water with their tentacles spread widely; the tentacles, which contain nematocysts to stun or kill the prey, may then flex to help bring it to the mouth. Their swimming technique also helps them to capture prey; when their bell expands it sucks in water which brings more potential prey within reach of the tentacles.",jfdetail:jfdetail4)
            jellyfishs.append(jellyfish4)

        

    }
}

struct JellyfishCell: View {
    var jellyfish: Jellyfish
    var body: some View {
        ZStack{
            Image(jellyfish.image)
            .resizable()
            .frame(width:500, height:400)
            .background(Color.black).opacity(1)
            MovieView(a: jellyfish.number)
            .frame(width:500,height:400)
            VStack(alignment: .leading){
               
                Text("\(jellyfish.name)")
                 .font(Font.custom("Avenir Next",size: 30))
                  .foregroundColor(.white)
                  .tracking(8)
                .frame(maxWidth: .infinity, alignment: .center)

            }
            
            
            
        }
        
    }
}

struct Home: View {
      @ObservedObject var appModel = AppModel()
      @State var showModal = false
      @State var selectedJellyfish: Jellyfish? = nil
  
    var body: some View {
      ZStack {
              ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing:0){
                    
                    ForEach(appModel.jellyfishs, id:\.name){ jellyfish in
                        Button(action: {
                                                  self.selectedJellyfish = jellyfish
                                                  
                                                  self.showModal.toggle()
                                              }) {
                                                  JellyfishCell(jellyfish:jellyfish)
                                              }
                                              .buttonStyle(PlainButtonStyle())
                    }
                    .sheet(isPresented: self.$showModal) {
                        HomeDetail(jellyfishdetail: self.selectedJellyfish!.self,jfdetail:self.selectedJellyfish!.jfdetail)
                                       }
                   
                    
                }
                
        }
        }
         .edgesIgnoringSafeArea(.all)
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
