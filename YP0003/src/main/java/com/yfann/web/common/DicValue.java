package com.yfann.web.common;

public class DicValue {
	/**
	 * 支付方式
	 * @author Simon
	 *
	 */
	public static class PayWay{
		/**支付方式-----在线支付*/
		public static final String PAY_WAY_ONLINE_PAY = "1";
	}
	/**
	 * 订单状态
	 * @author Simon
	 *
	 */
	public static class OrderStatus{
		/**订单状态-----未支付*/
		public static final String ORDER_STATUS_UNPAY = "0";
		
		/**订单状态-----已支付*/
		public static final String ORDER_STATUS_PAIED = "1";
		
		/**订单状态-----已取消*/
		public static final String ORDER_STATUS_CANCEL = "2";
	}
	/**
	 * 消息状态
	 * @author Simon
	 *
	 */
	public static class MessageStatus{
		/**消息状态-----未读*/
		public static final String MESSAGE_STATUS_UNREAD = "0";
		/**消息状态-----已读*/
		public static final String MESSAGE_STATUS_READ = "1";
	}
}
