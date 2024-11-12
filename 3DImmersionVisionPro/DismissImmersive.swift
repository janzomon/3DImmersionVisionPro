//
//  DismissImmersive.swift
//  3DImmersionVisionPro
//
//  Created by Damon gonzalez on 11/12/24.
//

import SwiftUI

struct DismissImmersive: View {
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    var body: some View {
        Button {
            Task {
                await dismissImmersiveSpace()
                print("Dismissing complete")
            }
        }label: {
            Text("Exit Immersive")
                .fontWeight(.bold)
                .foregroundColor(Color.red)
        }
    }
}

#Preview {
    DismissImmersive()
}
