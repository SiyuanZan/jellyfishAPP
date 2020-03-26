//
//  SearchBar.swift
//  jellyfish
//
//  Created by Siyuan Zan on 3/23/20.
//  Copyright © 2020 Siyuan Zan. All rights reserved.
//


import Foundation
import SwiftUI





struct SearchBar: UIViewRepresentable {
    @Binding var text:String
    
    class Coordinator: NSObject, UISearchBarDelegate{
        @Binding var text:String
        init(text: Binding<String>){
            _text=text
        }
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
 
//            if (searchText==nil) && (searchText=="") {
//              
//            }
//            else{
                 text=searchText
//            }
        }
    }
    
    func makeCoordinator() -> SearchBar.Coordinator {
        return Coordinator(text: $text)
    }
    func makeUIView(context:UIViewRepresentableContext<SearchBar>) ->UISearchBar {
        let searchBar=UISearchBar(frame:.zero)
        searchBar.delegate=context.coordinator
        return searchBar
    }
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>){
        uiView.text=text
    }


}
