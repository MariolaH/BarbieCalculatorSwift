//
//  TotalText.swift
//  Calculator
//
//  Created by Mariola Hullings on 7/25/23.
//

import SwiftUI

struct TotalText: View {
    var value = "0"
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
             .fill(Color(hue: 330.0 / 360.0, saturation: 0.6, brightness: 1.1))
             .frame(width: 300, height: 60)
             .overlay(
                 Text(value)
                     .font(.system(size: 60))
                     .foregroundColor(.black)
                     .fontWeight(.light)
                     .padding()
                     .frame(width: 300, alignment: .trailing)
                     .lineLimit(1)
             )
             .padding()
        }
        }

struct TotalText_Previews: PreviewProvider {
    static var previews: some View {
        TotalText()
            .background(.white)
    }
}



//Text(value)
//    .font(.system(size: 60))
//    .foregroundColor(.black)
//    .fontWeight(.light)
//    .background(Color(hue: 330.0 / 360.0, saturation: 0.6, brightness: 1.1))
//    .padding()
//    .frame(width: 300, alignment: .trailing)
//    .lineLimit(1)
//}
//}
