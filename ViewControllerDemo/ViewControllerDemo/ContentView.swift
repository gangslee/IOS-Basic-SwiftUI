//
//  ContentView.swift
//  ViewControllerDemo
//
//  Created by 이경수 on 2021/01/05.
//

import SwiftUI

struct ContentView: View {
    @State var imagePickerVisible: Bool = false
    @State var selectedImage: Image? = Image(systemName: "photo")
    
    var body: some View {
        ZStack{
            VStack{
                selectedImage?.resizable().aspectRatio(contentMode: .fit)
                
                Button(action:{
                    withAnimation{
                        self.imagePickerVisible.toggle()
                    }
                }) {
                    Text("Selected an Image")
                }
            }.padding()
            
            if (imagePickerVisible) {
                MyImagePicker(imagePickerVisible: $imagePickerVisible, selectedImage: $selectedImage)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
