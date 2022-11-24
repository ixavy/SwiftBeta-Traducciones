//
//  ContentView.swift
//  Traducciones
//
//  Created by iXavy on 23/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var textFieldName: String = ""
    @State var textFieldPhone: String = ""
    
    var body: some View {
        TabView {
            Form {
                Section {
                    TextField("form-name-key", text: $textFieldName)
                    TextField("form-phone-user \(textFieldName)", text: $textFieldPhone)
                        .keyboardType(.namePhonePad)
                    HStack {
                        Spacer()
                        Button("form-button-key") {
                            print("Save information...")
                        }
                            .buttonStyle(.bordered)
                            .tint(.blue)
                    }
                } header: {
                    Text("form-header-key")
                } footer: {
                    Text("form-footer-key")
                }
            }
                .tabItem {
                    Label("tabview-home-key", systemImage: "house.fill")
                }
            Text("Profile")
                .tabItem {
                    Label("tabview-profile-key", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
