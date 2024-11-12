//
//  ImmersiveView.swift
//  3DImmersionVisionPro
//
//  Created by Damon gonzalez on 11/12/24.
//

import SwiftUI
import RealityKit

struct ImmersiveView: View {
    @Binding var imageName:String
    var body: some View {
        RealityView { content in
            //skybox entity
            guard let skyBoxEntity = createSkyBox() else {
                print("Error loading skybox entity")
                return
            }
            //add to realitview
            content.add(skyBoxEntity)
        }
    }
    private func createSkyBox()->Entity? {
        //MESH
        let largeSphere = MeshResource.generateSphere(radius: 1000)
        //MATERIAL
        var skyBoxMaterial = UnlitMaterial()
        do {
            let texture = try TextureResource.load(named: imageName)
            skyBoxMaterial.color = .init(texture: .init(texture))
        }catch{
            print("error loading texture: \(error)")
        }
        
        //SKYBOX ENTITY
        let skyBoxEntity = Entity()
        skyBoxEntity.components.set(
            ModelComponent(mesh: largeSphere, materials: [skyBoxMaterial])
        )
        //MAP TEXTURE TO INNER SURFACE
        skyBoxEntity.scale *= .init(x: -1, y: 1, z: 1)
        return skyBoxEntity
    }
}

#Preview {
    ImmersiveView(imageName: .constant("castlePano"))
}
