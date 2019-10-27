//
//  ToggleTextButton.swift
//  DynamicList
//
//  Created by Ilyasa Azmi on 25/10/19.
//  Copyright © 2019 Ilyasa Azmi. All rights reserved.
//

import SwiftUI

struct ToggleTextButton: View {
    @Binding var isOn : Bool
    
    var body: some View {
        Button(
            action: { self.isOn.toggle()},
            label: {Text( self.isOn ? "Hide" : "Show")}
        )
    }
}

struct ToggleTextButton_Previews: PreviewProvider {
    @State static var myCoolBool = true
    
    static var previews: some View {
        ToggleTextButton(isOn: $myCoolBool)
    }
}
