//
//  ContentView.swift
//  DemoApp
//
//  Created by Fran Zekan on 29.06.2023..
//

import SwiftUI

struct ContentView: View {
    @State private var show = true

    var body: some View {
        Button("Open sheet") {
            show.toggle()
        }
        .bold()
        .sheet(isPresented: $show) {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Spacer()
                    Button("Done") {
                        show = false
                    }.bold()
                }.padding(10)
                
                Text("Modal Sheet in SwiftUI").font(.largeTitle).bold()

                Text("This is a dialog with a custom modal overlay built with SwiftUI")
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet nisl blandit, pellentesque eros eu, scelerisque eros. Sed cursus urna at nunc lacinia dapibus.")

                Spacer()
            }.padding(12)
            
            .presentationDetents([.large])
            .presentationDragIndicator(.visible)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
