//
//  ContentView.swift
//  jellyfish
//
//  Created by Siyuan Zan on 3/20/20.
//  Copyright © 2020 Siyuan Zan. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    @State var indexbar=0
    @State var searchTerm: String = ""
    @State var showModal = false
    @State var selectedExample: Example? = nil
    @State var selectedExamplePic:[Example]=[]
    var body: some View {
        ZStack{
        
            if self.indexbar==0{
            Home()
            .transition(.move(edge:.bottom ))
            .animation(.easeOut)
            }
            else if(self.indexbar==1){
                Category()
                .transition(.move(edge:.bottom ))
                .animation(.easeOut)
            }
            else if(self.indexbar==2){
                picture(showModal: $showModal, selectedExample: $selectedExample,selectedExamplePic:$selectedExamplePic)
                .transition(.move(edge:.bottom ))
                .animation(.easeOut)
            }
            else if(self.indexbar==3){
                Search(searchTerm:$searchTerm,showModal: $showModal, selectedExample: $selectedExample,selectedExamplePic:$selectedExamplePic)
//                Bar(indexbar:$indexbar)
                .transition(.move(edge:.bottom ))
                .animation(.easeOut)
            }
            if self.showModal==false{
            Bar(indexbar:$indexbar)
            .offset(y:320)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

