package com.yfann.web.pojo;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderDetailExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_order_detail
     *
     * @mbggenerated
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_order_detail
     *
     * @mbggenerated
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_order_detail
     *
     * @mbggenerated
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_order_detail
     *
     * @mbggenerated
     */
    public OrderDetailExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_order_detail
     *
     * @mbggenerated
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_order_detail
     *
     * @mbggenerated
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_order_detail
     *
     * @mbggenerated
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_order_detail
     *
     * @mbggenerated
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_order_detail
     *
     * @mbggenerated
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_order_detail
     *
     * @mbggenerated
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_order_detail
     *
     * @mbggenerated
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_order_detail
     *
     * @mbggenerated
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_order_detail
     *
     * @mbggenerated
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_order_detail
     *
     * @mbggenerated
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_order_detail
     *
     * @mbggenerated
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(String value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(String value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(String value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(String value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(String value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(String value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLike(String value) {
            addCriterion("id like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotLike(String value) {
            addCriterion("id not like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<String> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<String> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(String value1, String value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(String value1, String value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andOrderIdIsNull() {
            addCriterion("order_id is null");
            return (Criteria) this;
        }

        public Criteria andOrderIdIsNotNull() {
            addCriterion("order_id is not null");
            return (Criteria) this;
        }

        public Criteria andOrderIdEqualTo(String value) {
            addCriterion("order_id =", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotEqualTo(String value) {
            addCriterion("order_id <>", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdGreaterThan(String value) {
            addCriterion("order_id >", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdGreaterThanOrEqualTo(String value) {
            addCriterion("order_id >=", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdLessThan(String value) {
            addCriterion("order_id <", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdLessThanOrEqualTo(String value) {
            addCriterion("order_id <=", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdLike(String value) {
            addCriterion("order_id like", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotLike(String value) {
            addCriterion("order_id not like", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdIn(List<String> values) {
            addCriterion("order_id in", values, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotIn(List<String> values) {
            addCriterion("order_id not in", values, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdBetween(String value1, String value2) {
            addCriterion("order_id between", value1, value2, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotBetween(String value1, String value2) {
            addCriterion("order_id not between", value1, value2, "orderId");
            return (Criteria) this;
        }

        public Criteria andTestIdIsNull() {
            addCriterion("test_id is null");
            return (Criteria) this;
        }

        public Criteria andTestIdIsNotNull() {
            addCriterion("test_id is not null");
            return (Criteria) this;
        }

        public Criteria andTestIdEqualTo(String value) {
            addCriterion("test_id =", value, "testId");
            return (Criteria) this;
        }

        public Criteria andTestIdNotEqualTo(String value) {
            addCriterion("test_id <>", value, "testId");
            return (Criteria) this;
        }

        public Criteria andTestIdGreaterThan(String value) {
            addCriterion("test_id >", value, "testId");
            return (Criteria) this;
        }

        public Criteria andTestIdGreaterThanOrEqualTo(String value) {
            addCriterion("test_id >=", value, "testId");
            return (Criteria) this;
        }

        public Criteria andTestIdLessThan(String value) {
            addCriterion("test_id <", value, "testId");
            return (Criteria) this;
        }

        public Criteria andTestIdLessThanOrEqualTo(String value) {
            addCriterion("test_id <=", value, "testId");
            return (Criteria) this;
        }

        public Criteria andTestIdLike(String value) {
            addCriterion("test_id like", value, "testId");
            return (Criteria) this;
        }

        public Criteria andTestIdNotLike(String value) {
            addCriterion("test_id not like", value, "testId");
            return (Criteria) this;
        }

        public Criteria andTestIdIn(List<String> values) {
            addCriterion("test_id in", values, "testId");
            return (Criteria) this;
        }

        public Criteria andTestIdNotIn(List<String> values) {
            addCriterion("test_id not in", values, "testId");
            return (Criteria) this;
        }

        public Criteria andTestIdBetween(String value1, String value2) {
            addCriterion("test_id between", value1, value2, "testId");
            return (Criteria) this;
        }

        public Criteria andTestIdNotBetween(String value1, String value2) {
            addCriterion("test_id not between", value1, value2, "testId");
            return (Criteria) this;
        }

        public Criteria andMachineCodeIsNull() {
            addCriterion("machine_code is null");
            return (Criteria) this;
        }

        public Criteria andMachineCodeIsNotNull() {
            addCriterion("machine_code is not null");
            return (Criteria) this;
        }

        public Criteria andMachineCodeEqualTo(String value) {
            addCriterion("machine_code =", value, "machineCode");
            return (Criteria) this;
        }

        public Criteria andMachineCodeNotEqualTo(String value) {
            addCriterion("machine_code <>", value, "machineCode");
            return (Criteria) this;
        }

        public Criteria andMachineCodeGreaterThan(String value) {
            addCriterion("machine_code >", value, "machineCode");
            return (Criteria) this;
        }

        public Criteria andMachineCodeGreaterThanOrEqualTo(String value) {
            addCriterion("machine_code >=", value, "machineCode");
            return (Criteria) this;
        }

        public Criteria andMachineCodeLessThan(String value) {
            addCriterion("machine_code <", value, "machineCode");
            return (Criteria) this;
        }

        public Criteria andMachineCodeLessThanOrEqualTo(String value) {
            addCriterion("machine_code <=", value, "machineCode");
            return (Criteria) this;
        }

        public Criteria andMachineCodeLike(String value) {
            addCriterion("machine_code like", value, "machineCode");
            return (Criteria) this;
        }

        public Criteria andMachineCodeNotLike(String value) {
            addCriterion("machine_code not like", value, "machineCode");
            return (Criteria) this;
        }

        public Criteria andMachineCodeIn(List<String> values) {
            addCriterion("machine_code in", values, "machineCode");
            return (Criteria) this;
        }

        public Criteria andMachineCodeNotIn(List<String> values) {
            addCriterion("machine_code not in", values, "machineCode");
            return (Criteria) this;
        }

        public Criteria andMachineCodeBetween(String value1, String value2) {
            addCriterion("machine_code between", value1, value2, "machineCode");
            return (Criteria) this;
        }

        public Criteria andMachineCodeNotBetween(String value1, String value2) {
            addCriterion("machine_code not between", value1, value2, "machineCode");
            return (Criteria) this;
        }

        public Criteria andPlayerAuthorizeUserIdIsNull() {
            addCriterion("player_authorize_user_id is null");
            return (Criteria) this;
        }

        public Criteria andPlayerAuthorizeUserIdIsNotNull() {
            addCriterion("player_authorize_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andPlayerAuthorizeUserIdEqualTo(String value) {
            addCriterion("player_authorize_user_id =", value, "playerAuthorizeUserId");
            return (Criteria) this;
        }

        public Criteria andPlayerAuthorizeUserIdNotEqualTo(String value) {
            addCriterion("player_authorize_user_id <>", value, "playerAuthorizeUserId");
            return (Criteria) this;
        }

        public Criteria andPlayerAuthorizeUserIdGreaterThan(String value) {
            addCriterion("player_authorize_user_id >", value, "playerAuthorizeUserId");
            return (Criteria) this;
        }

        public Criteria andPlayerAuthorizeUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("player_authorize_user_id >=", value, "playerAuthorizeUserId");
            return (Criteria) this;
        }

        public Criteria andPlayerAuthorizeUserIdLessThan(String value) {
            addCriterion("player_authorize_user_id <", value, "playerAuthorizeUserId");
            return (Criteria) this;
        }

        public Criteria andPlayerAuthorizeUserIdLessThanOrEqualTo(String value) {
            addCriterion("player_authorize_user_id <=", value, "playerAuthorizeUserId");
            return (Criteria) this;
        }

        public Criteria andPlayerAuthorizeUserIdLike(String value) {
            addCriterion("player_authorize_user_id like", value, "playerAuthorizeUserId");
            return (Criteria) this;
        }

        public Criteria andPlayerAuthorizeUserIdNotLike(String value) {
            addCriterion("player_authorize_user_id not like", value, "playerAuthorizeUserId");
            return (Criteria) this;
        }

        public Criteria andPlayerAuthorizeUserIdIn(List<String> values) {
            addCriterion("player_authorize_user_id in", values, "playerAuthorizeUserId");
            return (Criteria) this;
        }

        public Criteria andPlayerAuthorizeUserIdNotIn(List<String> values) {
            addCriterion("player_authorize_user_id not in", values, "playerAuthorizeUserId");
            return (Criteria) this;
        }

        public Criteria andPlayerAuthorizeUserIdBetween(String value1, String value2) {
            addCriterion("player_authorize_user_id between", value1, value2, "playerAuthorizeUserId");
            return (Criteria) this;
        }

        public Criteria andPlayerAuthorizeUserIdNotBetween(String value1, String value2) {
            addCriterion("player_authorize_user_id not between", value1, value2, "playerAuthorizeUserId");
            return (Criteria) this;
        }

        public Criteria andMachineCodeAuthorizeTimeIsNull() {
            addCriterion("machine_code_authorize_time is null");
            return (Criteria) this;
        }

        public Criteria andMachineCodeAuthorizeTimeIsNotNull() {
            addCriterion("machine_code_authorize_time is not null");
            return (Criteria) this;
        }

        public Criteria andMachineCodeAuthorizeTimeEqualTo(Date value) {
            addCriterion("machine_code_authorize_time =", value, "machineCodeAuthorizeTime");
            return (Criteria) this;
        }

        public Criteria andMachineCodeAuthorizeTimeNotEqualTo(Date value) {
            addCriterion("machine_code_authorize_time <>", value, "machineCodeAuthorizeTime");
            return (Criteria) this;
        }

        public Criteria andMachineCodeAuthorizeTimeGreaterThan(Date value) {
            addCriterion("machine_code_authorize_time >", value, "machineCodeAuthorizeTime");
            return (Criteria) this;
        }

        public Criteria andMachineCodeAuthorizeTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("machine_code_authorize_time >=", value, "machineCodeAuthorizeTime");
            return (Criteria) this;
        }

        public Criteria andMachineCodeAuthorizeTimeLessThan(Date value) {
            addCriterion("machine_code_authorize_time <", value, "machineCodeAuthorizeTime");
            return (Criteria) this;
        }

        public Criteria andMachineCodeAuthorizeTimeLessThanOrEqualTo(Date value) {
            addCriterion("machine_code_authorize_time <=", value, "machineCodeAuthorizeTime");
            return (Criteria) this;
        }

        public Criteria andMachineCodeAuthorizeTimeIn(List<Date> values) {
            addCriterion("machine_code_authorize_time in", values, "machineCodeAuthorizeTime");
            return (Criteria) this;
        }

        public Criteria andMachineCodeAuthorizeTimeNotIn(List<Date> values) {
            addCriterion("machine_code_authorize_time not in", values, "machineCodeAuthorizeTime");
            return (Criteria) this;
        }

        public Criteria andMachineCodeAuthorizeTimeBetween(Date value1, Date value2) {
            addCriterion("machine_code_authorize_time between", value1, value2, "machineCodeAuthorizeTime");
            return (Criteria) this;
        }

        public Criteria andMachineCodeAuthorizeTimeNotBetween(Date value1, Date value2) {
            addCriterion("machine_code_authorize_time not between", value1, value2, "machineCodeAuthorizeTime");
            return (Criteria) this;
        }

        public Criteria andProductIdIsNull() {
            addCriterion("product_id is null");
            return (Criteria) this;
        }

        public Criteria andProductIdIsNotNull() {
            addCriterion("product_id is not null");
            return (Criteria) this;
        }

        public Criteria andProductIdEqualTo(String value) {
            addCriterion("product_id =", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdNotEqualTo(String value) {
            addCriterion("product_id <>", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdGreaterThan(String value) {
            addCriterion("product_id >", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdGreaterThanOrEqualTo(String value) {
            addCriterion("product_id >=", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdLessThan(String value) {
            addCriterion("product_id <", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdLessThanOrEqualTo(String value) {
            addCriterion("product_id <=", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdLike(String value) {
            addCriterion("product_id like", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdNotLike(String value) {
            addCriterion("product_id not like", value, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdIn(List<String> values) {
            addCriterion("product_id in", values, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdNotIn(List<String> values) {
            addCriterion("product_id not in", values, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdBetween(String value1, String value2) {
            addCriterion("product_id between", value1, value2, "productId");
            return (Criteria) this;
        }

        public Criteria andProductIdNotBetween(String value1, String value2) {
            addCriterion("product_id not between", value1, value2, "productId");
            return (Criteria) this;
        }

        public Criteria andPriceIsNull() {
            addCriterion("price is null");
            return (Criteria) this;
        }

        public Criteria andPriceIsNotNull() {
            addCriterion("price is not null");
            return (Criteria) this;
        }

        public Criteria andPriceEqualTo(BigDecimal value) {
            addCriterion("price =", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotEqualTo(BigDecimal value) {
            addCriterion("price <>", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThan(BigDecimal value) {
            addCriterion("price >", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("price >=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThan(BigDecimal value) {
            addCriterion("price <", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThanOrEqualTo(BigDecimal value) {
            addCriterion("price <=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceIn(List<BigDecimal> values) {
            addCriterion("price in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotIn(List<BigDecimal> values) {
            addCriterion("price not in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("price between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("price not between", value1, value2, "price");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_order_detail
     *
     * @mbggenerated do_not_delete_during_merge
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_order_detail
     *
     * @mbggenerated
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}