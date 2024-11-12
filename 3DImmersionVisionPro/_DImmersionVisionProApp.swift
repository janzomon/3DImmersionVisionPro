//
//  _DImmersionVisionProApp.swift
//  3DImmersionVisionPro
//
//  Created by Damon gonzalez on 11/12/24.
//

import SwiftUI

@main
struct _DImmersionVisionProApp: App {
    @State var immersiveMode:ImmersionStyle = .progressive
    @State var imageSelected:String = "castlePano"
    var body: some Scene {
        //MAIN WINDOW
        WindowGroup {
            VStack(spacing:5) {
                DismissImmersive()
                ContentView(imageName: $imageSelected)
            }
        }
        .windowStyle(.plain)
        .defaultSize(width: 960, height: 580)
        
        //VR
        ImmersiveSpace(id: "ImmersiveView"){
            ImmersiveView(imageName: $imageSelected)
        }
        .immersionStyle(selection: $immersiveMode, in: .progressive)
    }
}
