//
//  ContentView.swift
//  PracticeView
//
//  Created by Victoria Saldaña on 09-05-23.
//

import SwiftUI

// vstack = contenedor vertical
//hstack = contenedor horizontal
// zstack = contenedor fondo

struct ContentView: View {
    // variables, const deben ir fuera del body. metodos igual
    var nombre = "Press Buttom"
    //implementacion para alerta
    @State private var show = false
    var body: some View {
        VStack{
            Text("Click below").font(.caption2)
            Text("open").font(.headline)
            Button(nombre) {
                //enlace para que se muestre nuestra alerta
                show = true
            }.alert(isPresented: $show) {
                Alert(title: Text("Press OK"))
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
