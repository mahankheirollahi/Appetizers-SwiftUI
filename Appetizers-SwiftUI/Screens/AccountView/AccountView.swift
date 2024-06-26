//
//  AccountView.swift
//  Appetizers-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/23/24.
//

import SwiftUI

struct AccountView: View {
     
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView{
            Form{
                Section(header:Text("Personal Info")){
                    TextField("First Name", text: $viewModel.user.firstName)
                        .autocorrectionDisabled()
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .autocorrectionDisabled()
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    DatePicker("Birthday", selection: $viewModel.user.birthdate, displayedComponents: .date)
                    Button{
                        viewModel.saveChanges()
                    }label: {
                        Text("Save Changes")
                    }
                }
                
                Section(header:Text("Request")){
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                }  .toggleStyle(SwitchToggleStyle(tint:.brandPrimary))
            } .navigationTitle("Account")
        }
        .onAppear{
            viewModel.retrieveUser()
        }
        
        
        .alert(item: $viewModel.alertItem){ alertItem in
            
            Alert(title: alertItem.title,message: alertItem.message,dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
