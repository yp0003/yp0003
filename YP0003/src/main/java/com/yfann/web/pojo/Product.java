package com.yfann.web.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Product implements Serializable{
	private static final long serialVersionUID = 7791989614697932505L;
	/*购物车**/
	private BuyCar buyCar;
	 /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.id
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.product_id
     *
     * @mbggenerated
     */
    private String productId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.product_price
     *
     * @mbggenerated
     */
    private BigDecimal productPrice;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.product_sale
     *
     * @mbggenerated
     */
    private Long productSale;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.online_time
     *
     * @mbggenerated
     */
    private Date onlineTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.offline_time
     *
     * @mbggenerated
     */
    private Date offlineTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.online_status
     *
     * @mbggenerated
     */
    private String onlineStatus;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.teacher_id
     *
     * @mbggenerated
     */
    private String teacherId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.product_desc
     *
     * @mbggenerated
     */
    private String productDesc;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.product_lang
     *
     * @mbggenerated
     */
    private String productLang;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.update_time
     *
     * @mbggenerated
     */
    private Date updateTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.product_name
     *
     * @mbggenerated
     */
    private String productName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.buy_count
     *
     * @mbggenerated
     */
    private Long buyCount;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.product_status
     *
     * @mbggenerated
     */
    private String productStatus;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.update_badge
     *
     * @mbggenerated
     */
    private Long updateBadge;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.update_matter
     *
     * @mbggenerated
     */
    private Long updateMatter;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.product_kind_id
     *
     * @mbggenerated
     */
    private String productKindId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.product_knows
     *
     * @mbggenerated
     */
    private String productKnows;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_product.product_samll_pic
     *
     * @mbggenerated
     */
    private byte[] productSamllPic;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.id
     *
     * @return the value of t_product.id
     *
     * @mbggenerated
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.id
     *
     * @param id the value for t_product.id
     *
     * @mbggenerated
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.product_id
     *
     * @return the value of t_product.product_id
     *
     * @mbggenerated
     */
    public String getProductId() {
        return productId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.product_id
     *
     * @param productId the value for t_product.product_id
     *
     * @mbggenerated
     */
    public void setProductId(String productId) {
        this.productId = productId == null ? null : productId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.product_price
     *
     * @return the value of t_product.product_price
     *
     * @mbggenerated
     */
    public BigDecimal getProductPrice() {
        return productPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.product_price
     *
     * @param productPrice the value for t_product.product_price
     *
     * @mbggenerated
     */
    public void setProductPrice(BigDecimal productPrice) {
        this.productPrice = productPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.product_sale
     *
     * @return the value of t_product.product_sale
     *
     * @mbggenerated
     */
    public Long getProductSale() {
        return productSale;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.product_sale
     *
     * @param productSale the value for t_product.product_sale
     *
     * @mbggenerated
     */
    public void setProductSale(Long productSale) {
        this.productSale = productSale;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.online_time
     *
     * @return the value of t_product.online_time
     *
     * @mbggenerated
     */
    public Date getOnlineTime() {
        return onlineTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.online_time
     *
     * @param onlineTime the value for t_product.online_time
     *
     * @mbggenerated
     */
    public void setOnlineTime(Date onlineTime) {
        this.onlineTime = onlineTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.offline_time
     *
     * @return the value of t_product.offline_time
     *
     * @mbggenerated
     */
    public Date getOfflineTime() {
        return offlineTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.offline_time
     *
     * @param offlineTime the value for t_product.offline_time
     *
     * @mbggenerated
     */
    public void setOfflineTime(Date offlineTime) {
        this.offlineTime = offlineTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.online_status
     *
     * @return the value of t_product.online_status
     *
     * @mbggenerated
     */
    public String getOnlineStatus() {
        return onlineStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.online_status
     *
     * @param onlineStatus the value for t_product.online_status
     *
     * @mbggenerated
     */
    public void setOnlineStatus(String onlineStatus) {
        this.onlineStatus = onlineStatus == null ? null : onlineStatus.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.teacher_id
     *
     * @return the value of t_product.teacher_id
     *
     * @mbggenerated
     */
    public String getTeacherId() {
        return teacherId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.teacher_id
     *
     * @param teacherId the value for t_product.teacher_id
     *
     * @mbggenerated
     */
    public void setTeacherId(String teacherId) {
        this.teacherId = teacherId == null ? null : teacherId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.product_desc
     *
     * @return the value of t_product.product_desc
     *
     * @mbggenerated
     */
    public String getProductDesc() {
        return productDesc;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.product_desc
     *
     * @param productDesc the value for t_product.product_desc
     *
     * @mbggenerated
     */
    public void setProductDesc(String productDesc) {
        this.productDesc = productDesc == null ? null : productDesc.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.product_lang
     *
     * @return the value of t_product.product_lang
     *
     * @mbggenerated
     */
    public String getProductLang() {
        return productLang;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.product_lang
     *
     * @param productLang the value for t_product.product_lang
     *
     * @mbggenerated
     */
    public void setProductLang(String productLang) {
        this.productLang = productLang == null ? null : productLang.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.update_time
     *
     * @return the value of t_product.update_time
     *
     * @mbggenerated
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.update_time
     *
     * @param updateTime the value for t_product.update_time
     *
     * @mbggenerated
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.product_name
     *
     * @return the value of t_product.product_name
     *
     * @mbggenerated
     */
    public String getProductName() {
        return productName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.product_name
     *
     * @param productName the value for t_product.product_name
     *
     * @mbggenerated
     */
    public void setProductName(String productName) {
        this.productName = productName == null ? null : productName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.buy_count
     *
     * @return the value of t_product.buy_count
     *
     * @mbggenerated
     */
    public Long getBuyCount() {
        return buyCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.buy_count
     *
     * @param buyCount the value for t_product.buy_count
     *
     * @mbggenerated
     */
    public void setBuyCount(Long buyCount) {
        this.buyCount = buyCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.product_status
     *
     * @return the value of t_product.product_status
     *
     * @mbggenerated
     */
    public String getProductStatus() {
        return productStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.product_status
     *
     * @param productStatus the value for t_product.product_status
     *
     * @mbggenerated
     */
    public void setProductStatus(String productStatus) {
        this.productStatus = productStatus == null ? null : productStatus.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.update_badge
     *
     * @return the value of t_product.update_badge
     *
     * @mbggenerated
     */
    public Long getUpdateBadge() {
        return updateBadge;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.update_badge
     *
     * @param updateBadge the value for t_product.update_badge
     *
     * @mbggenerated
     */
    public void setUpdateBadge(Long updateBadge) {
        this.updateBadge = updateBadge;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.update_matter
     *
     * @return the value of t_product.update_matter
     *
     * @mbggenerated
     */
    public Long getUpdateMatter() {
        return updateMatter;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.update_matter
     *
     * @param updateMatter the value for t_product.update_matter
     *
     * @mbggenerated
     */
    public void setUpdateMatter(Long updateMatter) {
        this.updateMatter = updateMatter;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.product_kind_id
     *
     * @return the value of t_product.product_kind_id
     *
     * @mbggenerated
     */
    public String getProductKindId() {
        return productKindId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.product_kind_id
     *
     * @param productKindId the value for t_product.product_kind_id
     *
     * @mbggenerated
     */
    public void setProductKindId(String productKindId) {
        this.productKindId = productKindId == null ? null : productKindId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.product_knows
     *
     * @return the value of t_product.product_knows
     *
     * @mbggenerated
     */
    public String getProductKnows() {
        return productKnows;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.product_knows
     *
     * @param productKnows the value for t_product.product_knows
     *
     * @mbggenerated
     */
    public void setProductKnows(String productKnows) {
        this.productKnows = productKnows == null ? null : productKnows.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_product.product_samll_pic
     *
     * @return the value of t_product.product_samll_pic
     *
     * @mbggenerated
     */
    public byte[] getProductSamllPic() {
        return productSamllPic;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_product.product_samll_pic
     *
     * @param productSamllPic the value for t_product.product_samll_pic
     *
     * @mbggenerated
     */
    public void setProductSamllPic(byte[] productSamllPic) {
        this.productSamllPic = productSamllPic;
    }
    /************************************************************************************************************************/

	public BuyCar getBuyCar() {
		return buyCar;
	}

	public void setBuyCar(BuyCar buyCar) {
		this.buyCar = buyCar;
	}
    
    
}