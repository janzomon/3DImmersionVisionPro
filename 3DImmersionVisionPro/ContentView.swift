//
//  ContentView.swift
//  3DImmersionVisionPro
//
//  Created by Damon gonzalez on 11/12/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    @Binding var imageName:String
    var body: some View {
        ZStack {
            ScrollView(.horizontal) {
                LazyHStack {
                    Image(.castlePano)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .scaledToFit()
                        .frame(height: 480)
                        .onTapGesture {
                            Task {
                                await openImmersiveSpace(id: "ImmersiveView")
                                imageName = "castlePano"
                            }
                        }
                    Image(.celestialPano)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .scaledToFit()
                        .frame(height: 480)
                        .onTapGesture {
                            Task {
                                await openImmersiveSpace(id: "ImmersiveView")
                                imageName = "celestialPano"
                            }
                        }
                    Image(.dungeonPano)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .scaledToFit()
                        .frame(height: 480)
                        .onTapGesture {
                            Task {
                                await openImmersiveSpace(id: "ImmersiveView")
                                imageName = "dungeonPano"
                            }
                        }
                    Image(.etheralPano)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .scaledToFit()
                        .frame(height: 480)
                        .onTapGesture {
                            Task {
                                await openImmersiveSpace(id: "ImmersiveView")
                                imageName = "etheralPano"
                            }
                        }
                    Image(.snowSkyPano)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .scaledToFit()
                        .frame(height: 480)
                        .onTapGesture {
                            Task {
                                await openImmersiveSpace(id: "ImmersiveView")
                                imageName = "snowSkyPano"
                            }
                        }
                    Image(.darkCastlePano)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .scaledToFit()
                        .frame(height: 480)
                        .onTapGesture {
                            Task {
                                await openImmersiveSpace(id: "ImmersiveView")
                                imageName = "darkCastlePano"
                            }
                        }
                    Image(.celestialForestPano)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .scaledToFit()
                        .frame(height: 480)
                        .onTapGesture {
                            Task {
                                await openImmersiveSpace(id: "ImmersiveView")
                                imageName = "celestialForestPano"
                            }
                        }
                    Image(.celestialForestPano2)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .scaledToFit()
                        .frame(height: 480)
                        .onTapGesture {
                            Task {
                                await openImmersiveSpace(id: "ImmersiveView")
                                imageName = "celestialForestPano2"
                            }
                        }
                    Image(.darkTownPano)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .scaledToFit()
                        .frame(height: 480)
                        .onTapGesture {
                            Task {
                                await openImmersiveSpace(id: "ImmersiveView")
                                imageName = "darkTownPano"
                            }
                        }
                    Image(.stormBeachPano)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .scaledToFit()
                        .frame(height: 480)
                        .onTapGesture {
                            Task {
                                await openImmersiveSpace(id: "ImmersiveView")
                                imageName = "stormBeachPano"
                            }
                        }
                    Image(.stormMountainsPano)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .scaledToFit()
                        .frame(height: 480)
                        .onTapGesture {
                            Task {
                                await openImmersiveSpace(id: "ImmersiveView")
                                imageName = "stormMountainsPano"
                            }
                        }
                    Image(.lightningMountainsHighPano)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .scaledToFit()
                        .frame(height: 480)
                        .onTapGesture {
                            Task {
                                await openImmersiveSpace(id: "ImmersiveView")
                                imageName = "lightningMountainsHighPano"
                            }
                        }
                    Image(.castleWalkWayPano)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .scaledToFit()
                        .frame(height: 480)
                        .onTapGesture {
                            Task {
                                await openImmersiveSpace(id: "ImmersiveView")
                                imageName = "castleWalkWayPano"
                            }
                        }
                }
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.viewAligned)
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView(imageName: .constant("stormBeachPano"))
}
