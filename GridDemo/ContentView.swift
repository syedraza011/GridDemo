
//
//  GridDemo.swift
//  GridDemo
//
//  Created by Syed Raza on 6/11/23.
//

import SwiftUI

struct GridMainDemo: View {
    let data = (1...100).map {"item\($0)"}
    var body: some View {
        
   let  coloms:[GridItem]=[
        GridItem (_.adaptive(minimum: 100, maximum: 250), spacing: 10, alignment: .center)
   ]
        NavigationView{
            VStack {
                LazyVGrid (columns: coloms) {
                    ForEach( data, id:\.self) { item in
                        Text(item)
                    }
                }            }
            .navigationTitle("Grids")
        }
    }
}



struct GridDemo_Previews: PreviewProvider {
    static var previews: some View {
        GridMainDemo()
    }
}
