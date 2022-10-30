//
//  ContentView.swift
//  Shared
//
//  Created by TsangHingTat on 28/11/2021.
//

import SwiftUI
import Foundation
import AVFAudio
import AVKit

struct ContentView: View {
    init(){
        UITabBar.appearance().barTintColor = UIColor(.white)
        UITabBar.appearance().clipsToBounds = true
    }
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "star.fill").imageScale(.large)
                    Text("Text")
                }
            
            
            Home2View()
                .tabItem {
                    Image(systemName: "star.fill").imageScale(.large)
                    Text("Morse")
                }
        }.accentColor(Color(.systemTeal))
    }
}

struct Bar: View {
    @State var height: CGFloat
    var heightPostAnimation: CGFloat
    
    let animation = Animation.linear.repeatForever(autoreverses: true)
    
    init() {
        _height = State(initialValue: CGFloat(Int.random(in: 1..<50)))
        heightPostAnimation = CGFloat(Int.random(in: 1..<50))
        
        if abs(height - heightPostAnimation) < 10 {
            heightPostAnimation += 10
        }
    }
    
    var body: some View {
        Rectangle().fill(Color(.systemTeal))
            .frame(width: 3, height: height)
            .onAppear {
                withAnimation(animation) {
                    height = heightPostAnimation
                }
            }
    }
}

struct HomeView: View {
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) {
                    TranslateView()
                    Spacer()
                }
                
                
            }
            
            .navigationBarBackButtonHidden(true)
            .navigationTitle("MorseTranslater")
            
        }
        
    }
}

struct Home2View: View {
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) {
                    Translate2View()
                    Spacer()
                }
                
            }
            
            .navigationBarBackButtonHidden(true)
            .navigationTitle("MorseTranslater")
            
        }
        
    }
}

struct screen {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif


struct TranslateView: View {
    
    @State var text: String = "enter text"
    @State var final: String = "Error"
    @State var showingPopover = false
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 20){
                Text("Text").font(.system(size: 15, weight: .medium, design: .rounded))
                Text(self.text)
                    .font(.system(size: 30, weight: .semibold, design: .rounded))
                    .fixedSize(horizontal: false, vertical: true)
                Spacer()
                    .frame(height: 100)

                
                
                Divider()
                
                VStack(alignment: .leading) {
                    let str = (self.text)
                    let bg1 = str.replacingOccurrences(of: " ", with: "/")
                    let bg2 = bg1.replacingOccurrences(of: "A", with: "a")
                    let bg3 = bg2.replacingOccurrences(of: "B", with: "b")
                    let bg4 = bg3.replacingOccurrences(of: "C", with: "c")
                    let bg5 = bg4.replacingOccurrences(of: "D", with: "d")
                    let bg6 = bg5.replacingOccurrences(of: "E", with: "e")
                    let bg7 = bg6.replacingOccurrences(of: "F", with: "f")
                    let bg8 = bg7.replacingOccurrences(of: "G", with: "g")
                    let bg9 = bg8.replacingOccurrences(of: "H", with: "h")
                    let bg10 = bg9.replacingOccurrences(of: "I", with: "i")
                    let bg11 = bg10.replacingOccurrences(of: "J", with: "j")
                    let bg12 = bg11.replacingOccurrences(of: "K", with: "k")
                    let bg13 = bg12.replacingOccurrences(of: "L", with: "l")
                    let bg14 = bg13.replacingOccurrences(of: "M", with: "m")
                    let bg15 = bg14.replacingOccurrences(of: "N", with: "n")
                    let bg16 = bg15.replacingOccurrences(of: "O", with: "o")
                    let bg17 = bg16.replacingOccurrences(of: "P", with: "p")
                    let bg18 = bg17.replacingOccurrences(of: "Q", with: "q")
                    let bg19 = bg18.replacingOccurrences(of: "R", with: "r")
                    let bg20 = bg19.replacingOccurrences(of: "S", with: "s")
                    let bg21 = bg20.replacingOccurrences(of: "T", with: "t")
                    let bg22 = bg21.replacingOccurrences(of: "U", with: "u")
                    let bg23 = bg22.replacingOccurrences(of: "V", with: "v")
                    let bg24 = bg23.replacingOccurrences(of: "W", with: "w")
                    let bg25 = bg24.replacingOccurrences(of: "X", with: "x")
                    let bg26 = bg25.replacingOccurrences(of: "Y", with: "y")
                    let bgstr = bg26.replacingOccurrences(of: "Z", with: "z")
                    let replaced1 = bgstr.replacingOccurrences(of: "a", with: ".- ")
                    let replaced2 = replaced1.replacingOccurrences(of: "b", with: "-... ")
                    let replaced3 = replaced2.replacingOccurrences(of: "c", with: "-.-. ")
                    let replaced4 = replaced3.replacingOccurrences(of: "d", with: "-.. ")
                    let replaced5 = replaced4.replacingOccurrences(of: "e", with: ". ")
                    let replaced6 = replaced5.replacingOccurrences(of: "f", with: "..-. ")
                    let replaced7 = replaced6.replacingOccurrences(of: "g", with: "--. ")
                    let replaced8 = replaced7.replacingOccurrences(of: "h", with: ".... ")
                    let replaced9 = replaced8.replacingOccurrences(of: "i", with: ".. ")
                    let replaced10 = replaced9.replacingOccurrences(of: "j", with: ".--- ")
                    let replaced11 = replaced10.replacingOccurrences(of: "k", with: "-.- ")
                    let replaced12 = replaced11.replacingOccurrences(of: "l", with: ".-.. ")
                    let replaced13 = replaced12.replacingOccurrences(of: "m", with: "-- ")
                    let replaced14 = replaced13.replacingOccurrences(of: "n", with: "-. ")
                    let replaced15 = replaced14.replacingOccurrences(of: "o", with: "--- ")
                    let replaced16 = replaced15.replacingOccurrences(of: "p", with: ".--. ")
                    let replaced17 = replaced16.replacingOccurrences(of: "q", with: "--.- ")
                    let replaced18 = replaced17.replacingOccurrences(of: "r", with: ".-. ")
                    let replaced19 = replaced18.replacingOccurrences(of: "s", with: "... ")
                    let replaced20 = replaced19.replacingOccurrences(of: "t", with: "- ")
                    let replaced21 = replaced20.replacingOccurrences(of: "u", with: "..- ")
                    let replaced22 = replaced21.replacingOccurrences(of: "v", with: "...- ")
                    let replaced23 = replaced22.replacingOccurrences(of: "w", with: ".-- ")
                    let replaced24 = replaced23.replacingOccurrences(of: "x", with: "-..- ")
                    let replaced25 = replaced24.replacingOccurrences(of: "y", with: "-.-- ")
                    let replaced26 = replaced25.replacingOccurrences(of: "z", with: "--.. ")
                    let num1 = replaced26.replacingOccurrences(of: "1", with: ".---- ")
                    let num2 = num1.replacingOccurrences(of: "2", with: "..--- ")
                    let num3 = num2.replacingOccurrences(of: "3", with: "...-- ")
                    let num4 = num3.replacingOccurrences(of: "4", with: "....- ")
                    let num5 = num4.replacingOccurrences(of: "5", with: "..... ")
                    let num6 = num5.replacingOccurrences(of: "6", with: "-.... ")
                    let num7 = num6.replacingOccurrences(of: "7", with: "--... ")
                    let num8 = num7.replacingOccurrences(of: "8", with: "---.. ")
                    let num9 = num8.replacingOccurrences(of: "9", with: "----. ")
                    let num0 = num9.replacingOccurrences(of: "0", with: "----- ")
                    
                    let final = num0
                    
                    Text("Morse").font(.system(size: 15, weight: .medium, design: .rounded))
                    Text(final).font(.system(size: 30, weight: .semibold, design: .rounded))
                        .fixedSize(horizontal: false, vertical: true)
                }.foregroundColor(Color(.systemTeal))
                
                
            }
            .padding(.all)
            .frame(height: 400)
            .frame(maxWidth: .infinity)
            .cornerRadius(10)
            
            .onTapGesture {
                showingPopover = true
                    }
            
        }

        .popover(isPresented: $showingPopover) {
            
            VStack {
                HStack {
                    Spacer()
                    Text("❌")
                        .font(.largeTitle)
                        .frame(width: 35, height: 35, alignment: .center)
                        .padding()
                        .overlay(
                            Circle()
                                .stroke(Color.blue, lineWidth: 4)
                                .frame(width: 60, height: 60)
                        )
                        .onTapGesture {
                            showingPopover = false
                            self.hideKeyboard()
                        }
                }
                VStack {
                    TextEditor(text: $text)
                        .font(.system(size: 30, weight: .semibold, design: .rounded))
                        .cornerRadius(10)
                        .frame(height: 250)
                        
                }
                
                Spacer()
            }

                
        }
        
    }
    
}



struct playbutton: View {
    var body: some View {
        Text("🔦")
            .font(.largeTitle)
            .frame(width: 35, height: 35, alignment: .center)
            .padding()
            .overlay(
                Circle()
                    .stroke(Color.blue, lineWidth: 4)
                    .frame(width: 60, height: 60)
            )
    }
}

struct screen2 {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
}

#if canImport(UIKit)
extension View {
    func hideKeyboard2() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

struct Translate2View: View {
    
    @State var Morse: String = " .  -.  -  .  .-.  /  --  ---  .-.  ...  .  "
        
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20){
                VStack(alignment: .leading) {
                    Text("Morse").font(.system(size: 15, weight: .medium, design: .rounded))
                    Text(self.Morse)
                        .font(.system(size: 30, weight: .semibold, design: .rounded))
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                        .frame(height: 200)
                    
                }
                
                Divider()
                VStack(alignment: .leading) {
                    let str = (self.Morse)
                    let bgsec1 = str.replacingOccurrences(of: " / ",with: " ")
                    let replacedsec1 = bgsec1.replacingOccurrences(of: " .- ",with: "a")
                    let replacedsec2 = replacedsec1.replacingOccurrences(of: " -... ",with: "b")
                    let replacedsec3 = replacedsec2.replacingOccurrences(of: " -.-. ",with: "c")
                    let replacedsec4 = replacedsec3.replacingOccurrences(of: " -.. ",with: "d")
                    let replacedsec5 = replacedsec4.replacingOccurrences(of: " . ",with: "e")
                    let replacedsec6 = replacedsec5.replacingOccurrences(of: " ..-. ",with: "f")
                    let replacedsec7 = replacedsec6.replacingOccurrences(of: " --. ",with: "g")
                    let replacedsec8 = replacedsec7.replacingOccurrences(of: " .... ",with: "h")
                    let replacedsec9 = replacedsec8.replacingOccurrences(of: " .. ",with: "i")
                    let replacedsec10 = replacedsec9.replacingOccurrences(of: " .--- ",with: "j")
                    let replacedsec11 = replacedsec10.replacingOccurrences(of: " -.- ",with: "k")
                    let replacedsec12 = replacedsec11.replacingOccurrences(of: " .-.. ",with: "l")
                    let replacedsec13 = replacedsec12.replacingOccurrences(of: " -- ",with: "m")
                    let replacedsec14 = replacedsec13.replacingOccurrences(of: " -. ",with: "n")
                    let replacedsec15 = replacedsec14.replacingOccurrences(of: " --- ",with: "o")
                    let replacedsec16 = replacedsec15.replacingOccurrences(of: " .--. ",with: "p")
                    let replacedsec17 = replacedsec16.replacingOccurrences(of: " --.- ",with: "q")
                    let replacedsec18 = replacedsec17.replacingOccurrences(of: " .-. ",with: "r")
                    let replacedsec19 = replacedsec18.replacingOccurrences(of: " ... ",with: "s")
                    let replacedsec20 = replacedsec19.replacingOccurrences(of: " - ",with: "t")
                    let replacedsec21 = replacedsec20.replacingOccurrences(of: " ..- ",with: "u")
                    let replacedsec22 = replacedsec21.replacingOccurrences(of: " ...- ",with: "v")
                    let replacedsec23 = replacedsec22.replacingOccurrences(of: " .-- ",with: "w")
                    let replacedsec24 = replacedsec23.replacingOccurrences(of: " -..- ",with: "x")
                    let replacedsec25 = replacedsec24.replacingOccurrences(of: " -.-- ",with: "y")
                    let replacedsec26 = replacedsec25.replacingOccurrences(of: " --.. ",with: "z")
                    let numsec1 = replacedsec26.replacingOccurrences(of: " .---- ",with: "1")
                    let numsec2 = numsec1.replacingOccurrences(of: " ..--- ",with: "2")
                    let numsec3 = numsec2.replacingOccurrences(of: " ...-- ",with: "3")
                    let numsec4 = numsec3.replacingOccurrences(of: " ....- ",with: "4")
                    let numsec5 = numsec4.replacingOccurrences(of: " ..... ",with: "5")
                    let numsec6 = numsec5.replacingOccurrences(of: " -.... ",with: "6")
                    let numsec7 = numsec6.replacingOccurrences(of: " --... ",with: "7")
                    let numsec8 = numsec7.replacingOccurrences(of: " ---.. ",with: "8")
                    let numsec9 = numsec8.replacingOccurrences(of: " ----. ",with: "9")
                    let numsec0 = numsec9.replacingOccurrences(of: " ----- ",with: "0")
                    
                    Text("Text").font(.system(size: 15, weight: .medium, design: .rounded))
                    Text(numsec0).font(.system(size: 30, weight: .semibold, design: .rounded))
                        .fixedSize(horizontal: false, vertical: true)
                }.foregroundColor(Color(.systemTeal))
                Spacer()
            }
            .padding(
             
             )
            .frame(height: 400)
            .frame(maxWidth: .infinity)
//            .background(Color("background"))
            .cornerRadius(10)
            .onTapGesture {
                      self.hideKeyboard2()
                    }
            
            Spacer()
                    .frame(height: 170)

        }
        HStack {
            HStack {
                Text("·")
                    .font(.largeTitle)
                    .frame(width: 35, height: 35, alignment: .center)
                    .padding()
                    .overlay(
                        Circle()
                            .stroke(Color.blue, lineWidth: 4)
                            .frame(width: 60, height: 60)
                    )
                    .onTapGesture {
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        self.Morse = "\(self.Morse)\(".")"
                    }
                Spacer()
                Text("-")
                    .font(.largeTitle)
                    .frame(width: 35, height: 35, alignment: .center)
                    .padding()
                    .overlay(
                        Circle()
                            .stroke(Color.blue, lineWidth: 4)
                            .frame(width: 60, height: 60)
                    )
                    .onTapGesture {
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        self.Morse = "\(self.Morse)\("-")"
                    }
                Spacer()
                Text("/")
                    .font(.largeTitle)
                    .frame(width: 35, height: 35, alignment: .center)
                    .padding()
                    .overlay(
                        Circle()
                            .stroke(Color.blue, lineWidth: 4)
                            .frame(width: 60, height: 60)
                    )
                    .onTapGesture {
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        self.Morse = "\(self.Morse)\("/")"
                    }
                Spacer()
                Text("⎵")
                    .font(.largeTitle)
                    .frame(width: 35, height: 35, alignment: .center)
                    .padding()
                    .overlay(
                        Circle()
                            .stroke(Color.blue, lineWidth: 4)
                            .frame(width: 60, height: 60)
                    )

                    .onTapGesture {
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        self.Morse = "\(self.Morse)\("  ")"
                    }
                Spacer()
                Text("X")
                    .font(.largeTitle)
                    .frame(width: 35, height: 35, alignment: .center)
                    .padding()
                    .overlay(
                        Circle()
                            .stroke(Color.blue, lineWidth: 4)
                            .frame(width: 60, height: 60)
                    )
                    .onTapGesture {
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        

                        self.Morse = " "
                        
                        
                    }
            
                
            }
            
        }
    }
}


extension StringProtocol {
    var byWords: [SubSequence] {
        var byWords: [SubSequence] = []
        enumerateSubstrings(in: startIndex..., options: .byWords) { _, range, _, _ in
            byWords.append(self[range])
        }
        return byWords
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


func toggleTorch(on: Bool) {
    guard let device = AVCaptureDevice.default(for: .video) else { return }

    if device.hasTorch {
        do {
            try device.lockForConfiguration()

            if on == true {
                device.torchMode = .on
            } else {
                device.torchMode = .off
            }

            device.unlockForConfiguration()
        } catch {
            print("Torch could not be used")
        }
    } else {
        print("Torch is not available")
    }
}
