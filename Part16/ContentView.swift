//
//  ContentView.swift
//  Part16
//
//  Created by Kota Aso on 2024/03/26.
//

import SwiftUI


struct ContentView: View {
    @AppStorage("menuName") var menuName = ""
    @AppStorage("memo") var memo = ""

    var body: some View {
        VStack {
            TextField("メニュー名", text: $menuName)
                .textFieldStyle(.roundedBorder)
            TextEditor(text: $memo)
                .border(.gray)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
