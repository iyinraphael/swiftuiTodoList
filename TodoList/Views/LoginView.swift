//
//  LoginView.swift
//  SwiftUI-TodoList-Tutorial
//
//  Created by Raphael Iyin on 10/19/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(rotate: 15,
                           title: "Todo List",
                           subTitle: "Get things done",
                           color: Color.pink)
            
                
                // Login Form
                Form {
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Email Password", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                    
                    TLButton(title: "Log in", background: Color.blue, action: {
                        viewModel.login()
                    })
                    .padding()
                }
                .offset(y: -50)
                
                // Create Account
                VStack {
                    Text("New around here?")
                    
                    NavigationLink("Create An Account", destination: RegisterView())
                 
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
