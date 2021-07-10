//
//  Paths.swift
//  Paths
//
//  Created by Adityaa Mehra on 10/07/21.
//

import SwiftUI

struct Paths: View {
    let customShape:Path = {
        return Path({ path in
            // Series of commands to draw your path or shapes
            path.move(to: CGPoint(x:0,y:0))
            path.addLine(to: CGPoint(x:0,y:100))
            path.addLine(to: CGPoint(x:100,y:100))
            path.addLine(to: CGPoint(x:100,y:0))
            path.addLine(to: CGPoint(x:0,y:0))
            path.closeSubpath()
            
            path.move(to: CGPoint(x: 0, y: 200))
            path.addLines([CGPoint(x: 0, y: 300),
                           CGPoint(x: 100, y: 300),
                           CGPoint(x: 100, y: 200),
                           CGPoint(x: 0, y: 200),
                           CGPoint(x: 0, y: 200),
            ])
        })
    }()
    var body: some View {
        VStack{
            customShape.fill(Color.blue).frame(width: 100, height: 300).rotationEffect(Angle(degrees: 60))
            Image("beach").resizable().clipShape(customShape)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Paths()
    }
}
