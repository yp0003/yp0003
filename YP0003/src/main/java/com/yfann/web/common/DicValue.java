package com.yfann.web.common;

public class DicValue {
	/**
	 * 课程满意度
	 * @author Simon
	 *
	 */
	public static class ProductSatisfaction{
		public static final String PRODUCT_SATISFACTION_DIC_TYPE = "PRODUCT_SATISFACTION";
		/**课程满意度------差评*/
		public static final String PRODUCT_SATISFACTION_UNSATISFIED = "0";
		/**课程满意度------中评*/
		public static final String PRODUCT_SATISFACTION_OK = "1";
		/**课程满意度------好评*/
		public static final String PRODUCT_SATISFACTION_SATISFIED = "2";
	}
	
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
	/**
	 * 播放码授权状态
	 * @author Simon
	 *
	 */
	public static class PlayerCodeAccreditStatus{
		/**播放码授权状态-----未授权*/
		public static final String PALYER_CODE_ACCREDIT_STATUS_UNACCREDIT = "0";
		/**播放码授权状态-----已授权*/
		public static final String PALYER_CODE_ACCREDIT_STATUS_ACCREDITTED = "1";
		/**播放码授权状态-----审核中*/
		public static final String PALYER_CODE_ACCREDIT_STATUS_ACCREDITTING = "2";
		/**播放码授权状态-----未申请*/
		public static final String PALYER_CODE_ACCREDIT_STATUS_APPLICATION = "3";
	}
}
