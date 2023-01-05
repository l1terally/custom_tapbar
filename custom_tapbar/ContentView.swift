//
//  ContentView.swift
//  custom_tapbar
//
//  Created by Юрий  Лизунов on 01/01/23.
//

import SwiftUI

struct ContentView: View {
    @State var selected = 0
    
    
    
    var body: some View {
        VStack {
            
            
            Spacer()
            
            ZStack{
                
                
                
                HStack{
                    Spacer(minLength: 25)
                    Button(action: {
                        self.selected = 0
                    }){
                        Image(systemName: "house.fill")
                    }.foregroundColor(self.selected == 0 ? .black : .gray)
                    Spacer(minLength: 50)
                    
                    Button(action: {
                        self.selected = 1
                    }) {
                        Image(systemName: "magnifyingglass")
                    }.foregroundColor(self.selected == 1 ? .black : .gray)
                    
                    Spacer().frame(width: 150)
                    Button(action: {
                        self.selected = 2
                    }) {
                        Image(systemName: "person.fill")
                    }.foregroundColor(self.selected == 2 ? .black : .gray)
                    
                    
                    Spacer(minLength: 50)
                    
                    Button(action: {
                        self.selected = 3
                    }) {
                        Image(systemName: "line.3.horizontal.circle")
                    }.foregroundColor(self.selected == 3 ? .black : .gray)
                    
                    
                    Spacer(minLength: 25)
                        
                }
                .padding(.bottom)
                .padding(.horizontal)
                .background(CurvedShape())
                
                
                Button(action: {
                    //
                }){
                    Image(systemName: "heart")
                        .renderingMode(.original)
                        .padding(18)
                }.background(Color.yellow)
                    .clipShape(Circle())
                    .offset(y: -37)
                    .shadow(radius: 5)
            }
        }.background(Color(.darkGray))
            .edgesIgnoringSafeArea(.bottom)
            
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct CurvedShape: View {
    var body: some View {
        Path { path in
        
        path.move (to: CGPoint(x:0, y: -100))
            path.addLine(to: CGPoint (x:UIScreen.main.nativeBounds.width, y: 0))
            path.addLine(to: CGPoint (x:UIScreen.main.nativeBounds.width, y: 55))
        
        path.addArc (center: CGPoint (x:
                                        207.3, y: 55), radius: 30, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
        
        path.addLine(to: CGPoint(x: 0, y: 55))
    
        } .fill (Color.white)
            
    .rotationEffect(.init(degrees: 180))
    }
}
