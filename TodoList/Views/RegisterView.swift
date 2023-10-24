//
//  RegisterView.swift
//  SwiftUI-TodoList-Tutorial
//
//  Created by Raphael Iyin on 10/19/23.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            HeaderView(rotate: -15,
                       title: "Register",
                       subTitle: "Start organzing todos",
                       color: Color.orange)
            
            Form {
                TextField("Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Email Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account", background: Color.green, action: {
                    viewModel.register()
                })
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
