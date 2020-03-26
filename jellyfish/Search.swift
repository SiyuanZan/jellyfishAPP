//
//  Search.swift
//  jellyfish
//
//  Created by Siyuan Zan on 3/23/20.
//  Copyright © 2020 Siyuan Zan. All rights reserved.
//

import SwiftUI

class AppModel4: ObservableObject {
    var examples=[String]()
    
    init(){
        let names:[String]=[AppModel3().examples[0].title[0],AppModel3().examples[1].title[0],AppModel3().examples[2].title[0],AppModel3().examples[3].title[0],AppModel3().examples[4].title[0],AppModel3().examples[5].title[0],AppModel3().examples[6].title[0],AppModel3().examples[7].title[0],AppModel3().examples[8].title[0],AppModel3().examples[9].title[0]]
        examples+=names
        
    }
    
    
}

struct Search: View {
    @Binding var searchTerm: String
    @Binding var showModal : Bool
    @Binding var selectedExample:Example?
    @Binding var selectedExamplePic:[Example]
    @ObservedObject var appModel = AppModel3()
    init(searchTerm: Binding<String>,showModal: Binding<Bool>,selectedExample:Binding<Example?>,selectedExamplePic:Binding<[Example]>){
        UITableView.appearance().backgroundColor = .black
        UITableViewCell.appearance().backgroundColor = .black
        UITableView.appearance().tableFooterView = UIView()
        
        self._searchTerm = searchTerm
        self._showModal = showModal
        self._selectedExample=selectedExample
        self._selectedExamplePic=selectedExamplePic
    }
    
    func picIndex(name:String)->String{
        for i in 0...9{
            if (name==AppModel3().examples[i].title[0]){
                return AppModel3().examples[i].image
            }
            
        }
        return AppModel3().examples[0].image
        
    }
    var body: some View {
        
        
       ZStack{
        
        
        VStack(spacing:0){
            if self.showModal==false{
            SearchBar(text: $searchTerm)
                .padding()
                .offset(y:40)
            }
            List{
                
                ForEach(AppModel4().examples.filter{self.searchTerm.isEmpty ? true : $0.localizedCaseInsensitiveContains(self.searchTerm)
                },id:\.self){ name in
                    
                    ZStack{
                        Rectangle().fill( Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.609562286)))
                            .cornerRadius(10)
                        HStack{
                            Image(self.picIndex(name:name))
                                .resizable()
                                .frame(width:50,height:50)
                            
                            
                            Text(name).bold().padding(10).foregroundColor(Color.white)
                            Spacer()
                            Button(action: {
                                self.showModal.toggle()
                                
                                for i in 0..<10{
                                    if(name==AppModel3().examples[i].title[0])
                                    {self.selectedExample = AppModel3().examples[i]
                                    }
                                }
                                
                                
                            }) {
                                Image(systemName:"chevron.right").foregroundColor(.white).scaleEffect(       self.showModal ? 1.0 : 1.2)
                            }
                            
                            
                        }.padding()
                    }
                    
                    
                }
                
            }.listRowBackground(Color.black).offset(y:40)
            
        }
            
        if self.showModal {
           PictureDetail(picDetail: self.selectedExample!.self, showModal: self.$showModal,selectedExamplePic:self.$selectedExamplePic)
                    .offset(y: self.showModal ? 0 : UIScreen.main.bounds.height)
                    .animation(.easeOut)
            }
            
            
            
        }.background(Color.black)
            .edgesIgnoringSafeArea(.all)
        
        
        
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search(searchTerm: .constant(""),showModal: .constant(false), selectedExample:.constant(Example(title: ["Cotylorhiza Tuberculata","Mild Stinger","Habitat","Identify"], image: "1", content: ["","Harmless to humans.","Very abundant in the Mediterranean Sea, expecially in bays.","The umbrella can measure 30 cm in diameter, it is very rigid and roundish in its centre, where it has a reddish or yellow color. The external part of the manubrium is motile and pulsates vigorously. Under the umbrella, the manubrium resembles a bouquet of flowers, with blue-purple buttons, inserted into stout arms."], index:1,selected:false)),selectedExamplePic:.constant([]))
        //
    }
}
