//
//  CustomDialogExtension.swift
//

import Foundation
import SwiftUI
import UIKit

extension View {
    func customDialog<DialogContent: View>(isShowing: Binding<Bool>,
                                           @ViewBuilder dialogContent: @escaping ()
                                               -> DialogContent,
                                           onTapOutside: @escaping ((Bool) -> Void)) -> some View
    {
        modifier(CustomDialog(isShowing: isShowing, dialogContent: dialogContent,
                              onTapOutside: onTapOutside))
    }
}

struct CustomDialog<DialogContent: View>: ViewModifier {
    @Binding var isShowing: Bool
    let dialogContent: DialogContent
    let onTapOutside: (Bool) -> Void

    init(isShowing: Binding<Bool>,
         @ViewBuilder dialogContent: () -> DialogContent, onTapOutside: @escaping ((Bool) -> Void))
    {
        _isShowing = isShowing
        self.dialogContent = dialogContent()
        self.onTapOutside = onTapOutside
    }

    func body(content: Content) -> some View {
        ZStack {
            content
            if isShowing {
                Rectangle().foregroundColor(Color.black.opacity(0.6))
                ZStack {
                    dialogContent
                        .clipped()
                        .cornerRadius(10)
                        .background(RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(.white), alignment: .center)
                }

                .frame(alignment: .center)
                .clipped()
                .onTapGesture {
                    onTapOutside(false)
                }
            }
        }
        .onTapGesture {
            onTapOutside(true)
        }
        .ignoresSafeArea()
    }
}
