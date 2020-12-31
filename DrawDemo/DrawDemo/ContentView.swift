//
//  ContentView.swift
//  DrawDemo
//
//  Created by 이경수 on 2020/12/31.
//

import SwiftUI

struct ContentView: View {
    let colors = Gradient(colors: [Color.red, Color.yellow, Color.green, Color.blue, Color.purple])
    var body: some View {
        MyShape()
            .fill(RadialGradient(gradient: colors, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: CGFloat(0), endRadius:CGFloat(300)))
            .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .frame(width: 360, height: 350)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.maxY), control: CGPoint(x: rect.midX, y: rect.midY))
        path.addLine(to: CGPoint(x:rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}
