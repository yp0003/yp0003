package com.yfann.web.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class OrderDetail implements Serializable{
	/**
	 * 产品
	 */
	private Product product;
	/*******************************************************************************************************************/
	private static final long serialVersionUID = -9108075785859168280L;
	/**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order_detail.id
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order_detail.order_id
     *
     * @mbggenerated
     */
    private String orderId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order_detail.test_id
     *
     * @mbggenerated
     */
    private String testId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order_detail.machine_code
     *
     * @mbggenerated
     */
    private String machineCode;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order_detail.player_authorize_user_id
     *
     * @mbggenerated
     */
    private String playerAuthorizeUserId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order_detail.machine_code_authorize_time
     *
     * @mbggenerated
     */
    private Date machineCodeAuthorizeTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order_detail.product_id
     *
     * @mbggenerated
     */
    private String productId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order_detail.price
     *
     * @mbggenerated
     */
    private BigDecimal price;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_order_detail.player_file
     *
     * @mbggenerated
     */
    private byte[] playerFile;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order_detail.id
     *
     * @return the value of t_order_detail.id
     *
     * @mbggenerated
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order_detail.id
     *
     * @param id the value for t_order_detail.id
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order_detail.order_id
     *
     * @return the value of t_order_detail.order_id
     *
     * @mbggenerated
     */
    public String getOrderId() {
        return orderId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order_detail.order_id
     *
     * @param orderId the value for t_order_detail.order_id
     *
     * @mbggenerated
     */
    public void setOrderId(String orderId) {
        this.orderId = orderId == null ? null : orderId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order_detail.test_id
     *
     * @return the value of t_order_detail.test_id
     *
     * @mbggenerated
     */
    public String getTestId() {
        return testId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order_detail.test_id
     *
     * @param testId the value for t_order_detail.test_id
     *
     * @mbggenerated
     */
    public void setTestId(String testId) {
        this.testId = testId == null ? null : testId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order_detail.machine_code
     *
     * @return the value of t_order_detail.machine_code
     *
     * @mbggenerated
     */
    public String getMachineCode() {
        return machineCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order_detail.machine_code
     *
     * @param machineCode the value for t_order_detail.machine_code
     *
     * @mbggenerated
     */
    public void setMachineCode(String machineCode) {
        this.machineCode = machineCode == null ? null : machineCode.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order_detail.player_authorize_user_id
     *
     * @return the value of t_order_detail.player_authorize_user_id
     *
     * @mbggenerated
     */
    public String getPlayerAuthorizeUserId() {
        return playerAuthorizeUserId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order_detail.player_authorize_user_id
     *
     * @param playerAuthorizeUserId the value for t_order_detail.player_authorize_user_id
     *
     * @mbggenerated
     */
    public void setPlayerAuthorizeUserId(String playerAuthorizeUserId) {
        this.playerAuthorizeUserId = playerAuthorizeUserId == null ? null : playerAuthorizeUserId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order_detail.machine_code_authorize_time
     *
     * @return the value of t_order_detail.machine_code_authorize_time
     *
     * @mbggenerated
     */
    public Date getMachineCodeAuthorizeTime() {
        return machineCodeAuthorizeTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order_detail.machine_code_authorize_time
     *
     * @param machineCodeAuthorizeTime the value for t_order_detail.machine_code_authorize_time
     *
     * @mbggenerated
     */
    public void setMachineCodeAuthorizeTime(Date machineCodeAuthorizeTime) {
        this.machineCodeAuthorizeTime = machineCodeAuthorizeTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order_detail.product_id
     *
     * @return the value of t_order_detail.product_id
     *
     * @mbggenerated
     */
    public String getProductId() {
        return productId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order_detail.product_id
     *
     * @param productId the value for t_order_detail.product_id
     *
     * @mbggenerated
     */
    public void setProductId(String productId) {
        this.productId = productId == null ? null : productId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order_detail.price
     *
     * @return the value of t_order_detail.price
     *
     * @mbggenerated
     */
    public BigDecimal getPrice() {
        return price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order_detail.price
     *
     * @param price the value for t_order_detail.price
     *
     * @mbggenerated
     */
    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_order_detail.player_file
     *
     * @return the value of t_order_detail.player_file
     *
     * @mbggenerated
     */
    public byte[] getPlayerFile() {
        return playerFile;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_order_detail.player_file
     *
     * @param playerFile the value for t_order_detail.player_file
     *
     * @mbggenerated
     */
    public void setPlayerFile(byte[] playerFile) {
        this.playerFile = playerFile;
    }
    /********************************************************************************************************************/

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
    
}