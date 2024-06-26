//
//  AccountView.swift
//  Appetizers-SwiftUI
//
//  Created by Mahan Kheirollahi on 6/23/24.
//

import SwiftUI

struct AccountView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthdate = Date()
    @State private var extraNapkins = false
    @State private var frequentRefills = false
    
    
    var body: some View {
        NavigationView{
            Form{
                Section(header:Text("Personal Info")){
                    TextField("First Name", text: $firstName)
                        .autocorrectionDisabled()
                    TextField("Last Name", text: $lastName)
                        .autocorrectionDisabled()
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    DatePicker("Birthday", selection: $birthdate, displayedComponents: .date)
                    Button{
                        
                    }label: {
                        Text("Save Changes")
                    }
                }
                
                Section(header:Text("Request")){
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    Toggle("Frequent Refills", isOn: $frequentRefills)
                }  .toggleStyle(SwitchToggleStyle(tint:.brandPrimary))
            } .navigationTitle("Account")
        }
    }
}

#Preview {
    AccountView()
}
