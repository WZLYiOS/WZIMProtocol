//
//  WZIMMessageProtocol.swift
//  WZIMUIKit_Example
//
//  Created by qiuqixiang on 2020/4/30.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

// MARK - 消息体协议
public protocol WZIMMessageProtocol {
        
    /// 消息状态
    func wzStatus() -> WZIMMessageStatus
    
    /// 是否已读
    func wzIsReaded() -> Bool
    
    /// 是否删除消息
    func wzRemove() -> Bool
    
    /// 发送者
    func wzSender() -> String
    
    /// 消息id
    func wzMessageId() -> String
    
    /// 时间戳
    func wzTimestamp() -> Date
    
    /// 获取当前消息的会话
    func wzGetConversation() -> WZIMConversationProcotol
    
    /// 将消息导入本地
    func wzConvertToImportedMsg()
    
    /// 设置消息发送方: 需要先将消息到导入到本地，调用 convertToImportedMsg 方法
    func wzSetSender(sender: String)
    
    /// 消息位置
    func wzLoaction() -> WZMessageLocation
    
    /// 会话列表内容
    func wzListContent() -> NSMutableAttributedString
    
    /// 设置音频已读
    func wzSetCustomInt(param: Int)
    
    /// 获取音频是否已读
    func wzCustomInt() -> Int
}


