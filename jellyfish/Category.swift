//
//  Category.swift
//  jellyfish
//
//  Created by Siyuan Zan on 3/21/20.
//  Copyright © 2020 Siyuan Zan. All rights reserved.
//

import SwiftUI
struct Class{
    var name:String
    var image:String
    var character:String
    var video:String
}

class AppModel2: ObservableObject {
    var classes=[Class]()
    init(){
        
        let class1=Class(name:"HYDROZOA", image: "Hydrozoa", character: "A great many hydrozoans are also colonial. Some form delicate branched colonies, while others form massive colonies that resemble true corals. Other hydrozoans have developed pelagic (floating) colonies that are often confused with jellyfish, but unlike jellyfish they are composed of many individuals, all specialized for various functions.Most hydrozoan species include both a polypoid and a medusoid stage in their lifecycles, although a number of them have only one or the other",video:"Hy")
        classes.append(class1)
        let class2=Class(name:"CUBOZOA", image: "Cubozoa", character: "Cubozoa are cnidarian invertebrates distinguished by their cube-shaped medusae. Stings from these and a few other species in the class are extremely painful and can be fatal to humans.It has been found that the statoliths, which are composed of calcium sulfate hemihydrate, exhibit clear sequential incremental layers, thought to be laid down on a daily basis. This has enabled researchers to estimate growth rates, ages, and age to maturity.The box jellyfish actively hunts its prey (small fish), rather than drifting as do true jellyfish.",video:"cu")
        classes.append(class2)
        let class3=Class(name:"STAUROZOA", image: "Staurozoa", character: "Staurozoa is a class of Medusozoa, jellyfishes and hydrozoans. It has one extant order, Stauromedusae (stalked jellyfishes), and one extinct order, Conulatae.The extinct order is largely unknown and described as a possibly cnidarian clade of marine life with shell-like structures, the Conulariida. Staurozoans are small animals (1–4 cm or 0.4–1.6 in) that live in marine environments, usually attached to seaweeds, rocks, or gravel.[3] They have a large antitropical distribution, a majority found in boreal or polar, near-shore, and shallow waters.",video:"st")
        classes.append(class3)
        let class4=Class(name:"SCYPHOZOA", image: "Scyphozoa", character: "Most species of Scyphozoa have two life history phases, including the planktonic medusa or jellyfish form, which is most evident in the warm summer months, and an inconspicuous, but longer-lived, bottom-dwelling polyp, which seasonally gives rise to new medusae. Most of the large, often colorful, and conspicuous jellyfish found in coastal waters throughout the world are Scyphozoa. They typically range from 2 to 40 cm (0.79 to 15.75 in) in diameter." ,video:"sc")
        classes.append(class4)
    }
    
}

struct CategoryCell: View {
   
    var classcell:Class
    var body: some View {
        ZStack{
            Image(classcell.image)
                .resizable()
                .frame(width:500, height:400)
                .background(Color.black).opacity(1)
            VStack(alignment: .leading){
                
                Text("\(classcell.name)")
                    .font(Font.custom("Avenir Next",size: 30))
                    .foregroundColor(.white)
                    .tracking(8)
                    .frame(maxWidth: .infinity, alignment: .center)
                
            }
            
            
            
        }
        
    }
}
struct Category: View {
    @ObservedObject var appModel = AppModel2()
    @State var showModal = false
    @State var selectedClass: Class? = nil
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing:0){
                    
                    ForEach(appModel.classes, id:\.name){ classcell in
                        Button(action: {
                            self.selectedClass = classcell
                            
                            self.showModal.toggle()
                        }) {
                            CategoryCell(classcell:classcell)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .sheet(isPresented: self.$showModal) {
                        CategoryDetail(classDetail: self.selectedClass!.self)
                    }
                    
                    
                }
                
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category()
    }
}
