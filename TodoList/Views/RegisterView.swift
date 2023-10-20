//
//  RegisterView.swift
//  SwiftUI-TodoList-Tutorial
//
//  Created by Raphael Iyin on 10/19/23.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            HeaderView(rotate: -15,
                       title: "Register",
                       subTitle: "Start organzing todos",
                       color: Color.orange)
            
            Form {
                TextField("Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("Email Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                Button {
                    // Attempt log in
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.green)
                        
                        Text("Create Account")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                }
                .padding()
            }
        }
        
        Spacer()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
