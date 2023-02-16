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
                    LikeButton()
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
                        Shuffle()
                        Spacer()
                        Image(systemName: "backward.end.fill")
                            .font(.title2)
                        Spacer()
                        PlayPauseButton()
                        Spacer()
                        Image(systemName: "forward.end.fill")
                            .font(.title2)
                        Spacer()
                        Loop()
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
                    Image(systemName: "text.line.first.and.arrowtriangle.forward")
                        .foregroundColor(.white)
//                    VStack {
//                        Image(systemName: "capsule")
//                            .foregroundColor(.white)
//                        Image(systemName: "line.diagonal")
//                            .foregroundColor(.white)
//                            .rotationEffect(.degrees(45))
//                        Image(systemName: "line.diagonal")
//                            .foregroundColor(.white)
//                            .rotationEffect(.degrees(45))
//                    }
                }
                .padding()

            }
        }
    }
}

struct LikeButton: View {
    @State private var isLiked = false
    
    var body: some View {
        Button(action: {
            self.isLiked.toggle()
        }) {
            Image(systemName: isLiked ? "heart.fill": "heart")
                .font(.title2)
                .foregroundColor(isLiked ? Color(.systemGreen): Color("LightGray"))
        }
    }
}

struct Shuffle: View {
    @State private var shuffle = false
    
    var body: some View {
        Button(action: {
            self.shuffle.toggle()
        }) {
            Image(systemName: "shuffle")
                .font(.title2)
                .foregroundColor(shuffle ? Color(.systemGreen): Color(.white))
        }
    }
    
}

struct PlayPauseButton: View {
    @State private var playing = true
    
    var body: some View {
        Button(action: {
            self.playing.toggle()
        }) {
            Image(systemName: playing ? "pause.circle.fill": "play.circle.fill")
                .font(.largeTitle)
        }
    }
    
}

struct Loop: View {
    @State private var loop = false
    
    var body: some View {
        Button(action: {
            self.loop.toggle()
        }) {
            Image(systemName: "arrow.rectanglepath")
                .font(.title2)
                .rotationEffect(.degrees(180))
                .foregroundColor(loop ? Color(.white): Color(.systemGreen))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
