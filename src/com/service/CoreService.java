package com.service;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.nutz.dao.impl.NutDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wechat.message.req.TextMessage;
import com.util.MessageUtil;

@Service
public class CoreService {

	@Autowired
	private NutDao dao;

	
	public String processRequest(HttpServletRequest request) {
		// xml格式的消息数据
				String respXml = null;
				// 默认返回的文本消息内容
				String respContent = "未知的消息类型！";
				try {
					// 调用parseXml方法解析请求消息
					Map<String, String> requestMap = MessageUtil.parseXml(request);
					// 发送方帐号
					String fromUserName = requestMap.get("FromUserName");
					// 开发者微信号
					String toUserName = requestMap.get("ToUserName");
					// 消息类型
					String msgType = requestMap.get("MsgType");

					// 回复文本消息
					TextMessage textMessage = new TextMessage();
					textMessage.setToUserName(fromUserName);
					textMessage.setFromUserName(toUserName);
					textMessage.setCreateTime(new Date().getTime());
					textMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_TEXT);

					// 文本消息
					if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_TEXT)) {
						String content=requestMap.get("Content");
					}
					// 图片消息
					else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_IMAGE)) {
						 String picUrl = requestMap.get("PicUrl");  
					}
					// 语音消息
					else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_VOICE)) {
						respContent = "您发送的是语音消息！";
					}
					// 视频消息
					else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_VIDEO)) {
						respContent = "您发送的是视频消息！";
					}
					// 地理位置消息
					else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_LOCATION)) {
						respContent = "您发送的是地理位置消息！";
					}
					// 链接消息
					else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_LINK)) {
						respContent = "您发送的是链接消息！";
					}
					// 事件推送
					else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_EVENT)) {
						// 事件类型
						String eventType = requestMap.get("Event");
						// 关注
						if (eventType.equals(MessageUtil.EVENT_TYPE_SUBSCRIBE)) {
							respContent = "谢谢您的关注！";
						}
						// 取消关注
						else if (eventType.equals(MessageUtil.EVENT_TYPE_UNSUBSCRIBE)) {
							// TODO 取消订阅后用户不会再收到公众账号发送的消息，因此不需要回复
						}
						// 扫描带参数二维码
						else if (eventType.equals(MessageUtil.EVENT_TYPE_SCAN)) {
							// TODO 处理扫描带参数二维码事件
						}
						// 上报地理位置
						else if (eventType.equals(MessageUtil.EVENT_TYPE_LOCATION)) {
							// TODO 处理上报地理位置事件
						}
						// 自定义菜单
						else if (eventType.equals(MessageUtil.EVENT_TYPE_CLICK)) {
							// TODO 处理菜单点击事件
						}
					}
					// 设置文本消息的内容
					textMessage.setContent(respContent);
					// 将文本消息对象转换成xml
					respXml = MessageUtil.messageToXml(textMessage);
				} catch (Exception e) {
					e.printStackTrace();
				}
				return respXml;
	}

}
