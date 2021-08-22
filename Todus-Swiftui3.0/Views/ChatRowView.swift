//
//  ChatRowView.swift
//  ChatRowView
//
//  Created by Asiel Cabrera Gonzalez on 22/8/21.
//

import SwiftUI

struct ChatRowView: View {
    
    let chat: Chat
    
    
    var body: some View {
        HStack(spacing: 20) {
            Image(chat.person.imgString)
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            ZStack {
                VStack(alignment: .trailing, spacing: 5) {
                    HStack {
                        Text(chat.person.name)
                        Spacer()
                        Text(chat.messages.last?.date.descriptiveString() ?? "")
                    }
                    HStack {
                        Text(chat.messages.last?.text ?? "")
                            .foregroundColor(.gray)
                            .lineLimit(2)
                            .frame(height: 50, alignment: .top)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.trailing, 40)
                    }
                }
                Circle()
                    .foregroundColor(chat.hasUnreadMessage ? .blue : .clear)
                    .frame(width: 18, height: 18)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
        .frame(height: 80)
    }
}

struct ChatRowView_Previews: PreviewProvider {
    static var previews: some View {
        ChatRowView(chat: Chat.sampleData[0])
    }
}
