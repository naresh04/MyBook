//
//  LessionThree.swift
//  Chep6
//
//  Created by naresh chouhan on 4/29/25.
//

import SwiftUI

struct LessionThree: View {
    var body: some View {
        Grid(alignment: .topLeading, horizontalSpacing: 8.0,
             verticalSpacing: 8.0) {
            GridRow {
            GradientCell(color: .blue, width: 70, height: 75)
            GradientCell(color: .brown, width: 70, height: 75)
            .gridColumnAlignment(.trailing)
            GradientCell(color: .orange, width: 70, height: 120)
            }
            
            GridRow(alignment: .bottom) {
            GradientCell(color: .blue, width: 70, height: 75)
            GradientCell(color: .yellow, width: 70, height: 75)
            GradientCell(color: .red, width: 70, height: 120)
            }
            
            GridRow {
            GradientCell(color: .green, width: 120, height: 80)
            GradientCell(color: .yellow, width: 120, height: 75)
            GradientCell(color: .orange, width: 70, height: 50)
            }
            
            GridRow {
                RoundedRectangle(cornerRadius: 8.0)
                .fill(.red.gradient)
                .frame(height: 80.0)
                .gridCellUnsizedAxes(.horizontal)
                GradientCell(color: .yellow, width: 120, height: 80)
                GradientCell(color: .orange, width: 70, height: 80)
                }
            
            GridRow(alignment: .bottom) {
                RoundedRectangle(cornerRadius: 8.0)
                    .fill(Color(.blue)
                    .gradient)
                    .frame(width: 120.0, height: 100.0)
                
            RoundedRectangle(cornerRadius: 8.0).fill(Color(.cyan)
                .gradient)
                .frame(width: 50.0, height: 100.0)
                RoundedRectangle(cornerRadius: 8.0).fill(Color(.
                darkGray).gradient)
                .frame(width: 50.0, height: 50.0)
            }
            
            GridRow(alignment: .bottom)
            {
                RoundedRectangle(cornerRadius:8.0)
                    .fill(Color(.blue).gradient)
                    .frame(width: 120.0, height: 50.0)
            RoundedRectangle(cornerRadius:8.0)
                    .fill(Color(.cyan).gradient)
                    .frame(height: 50.0)
            RoundedRectangle(cornerRadius: 8.0)
                    .fill(Color(.darkGray).gradient)
                    .frame(width: 50.0, height: 50.0)
            }
            
            GridRow(alignment: .bottom)
            {
                RoundedRectangle(cornerRadius:8.0)
                    .fill(Color(.blue).gradient)
                    .frame( height: 50.0).gridCellColumns(2)
                RoundedRectangle(cornerRadius:8.0)
                        .fill(Color(.darkGray).gradient)
                        .frame(width: 50.0, height: 50.0)
                }
            
            
        }
    }
    
    
    
    
    
    
    struct GradientCell: View {
    let color: Color
    let width: CGFloat
    let height: CGFloat
    var body: some View {
    RoundedRectangle(cornerRadius: 8.0)
    .fill(color.gradient)
    .frame(width: width, height: height)
    }
    }
}



#Preview {
    LessionThree()
}
