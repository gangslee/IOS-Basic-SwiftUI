//
//  ContentView.swift
//  ListNavDemo
//
//  Created by 이경수 on 2020/12/29.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var carStore : CarStore = CarStore(cars: carData)
    
    var body: some View {
        NavigationView {
            List{
                ForEach (carStore.cars){ car in
                    ListCell(car: car)
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            .navigationBarTitle(Text("EV Cars"))
            .navigationBarItems(leading: NavigationLink(destination:
                                                            AddNewCar(carStore: self.carStore)){
                Text("Add")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }, trailing: EditButton())
        }
    }
    
    func deleteItems(at offets: IndexSet){
        carStore.cars.remove(atOffsets: offets)
    }
    
    func moveItems(from source: IndexSet, to destination: Int){
        carStore.cars.move(fromOffsets: source, toOffset: destination)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListCell: View {
    var car : Car
    
    var body: some View {
        NavigationLink(destination: CarDetail(selectedCar: car)) {
            HStack{
                Image(car.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 60)
                Text(car.name)
            }
        }
    }
}
