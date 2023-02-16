//
//  ContentView.swift
//  mp02
//
//  Created by Isaac Frank on 2/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("BlueGray"), Color("DarkGray")]),
                           startPoint: .topLeading,
                           endPoint: .bottomLeading)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Group {
                        Image(systemName: "chevron.down")
                            
                        Spacer()
                        
                        Text("Elevation Worship")
                            .font(.subheadline)
                            .bold()
                            //.font(.custom("default", size: 14, relativeTo: .body))
                        Spacer()
                        
                        Image(systemName: "ellipsis")
                    }
                    .foregroundColor(.white)
                }
                .padding()
                
                Spacer()
                Image("Album1")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("O Come to the Altar (Live)")
                            .font(.title2)
                            .foregroundColor(.white)
                            .bold()
                        
                        Text("Elevation Worship")
                            .foregroundColor(Color("LightGray"))
                    }
                    Spacer()
                    Image(systemName: "heart")
                        .font(.title2)
                        .foregroundColor(Color("LightGray"))
                }
                .padding()
                
                VStack {
                    // slider
                    
                    HStack {
                        Text("2:15")
                            .foregroundColor(Color("LightGray"))
                            .font(.caption)
                        Spacer()
                        Text("-3:33")
                            .foregroundColor(Color("LightGray"))
                            .font(.caption)
                    }
                    .padding()
                }
                
                HStack {
                    Group {
                        Image(systemName: "shuffle")
                            .font(.title2)
                        Spacer()
                        Image(systemName: "backward.end.fill")
                            .font(.title2)
                        Spacer()
                        Image(systemName: "play.circle.fill")
                            .font(.largeTitle)
                        Spacer()
                        Image(systemName: "forward.end.fill")
                            .font(.title2)
                        Spacer()
                        Image(systemName: "arrow.rectanglepath")
                            .font(.title2)
                            .rotationEffect(.degrees(180))
                    }
                    .foregroundColor(.white)
                }
                .padding()
                
                Spacer()
                
                HStack {
                    Image(systemName: "tv.and.hifispeaker.fill")
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(.white)
                        .padding()
                    VStack {
                        Image(systemName: "capsule")
                            .foregroundColor(.white)
                        Image(systemName: "line.diagonal")
                            .foregroundColor(.white)
                            .rotationEffect(.degrees(45))
                        Image(systemName: "line.diagonal")
                            .foregroundColor(.white)
                            .rotationEffect(.degrees(45))
                    }
                }
                .padding()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
