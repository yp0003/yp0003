package com.yfann.web.pojo;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class ApplyMoneyExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_apply_money
     *
     * @mbggenerated
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_apply_money
     *
     * @mbggenerated
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_apply_money
     *
     * @mbggenerated
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_apply_money
     *
     * @mbggenerated
     */
    public ApplyMoneyExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_apply_money
     *
     * @mbggenerated
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_apply_money
     *
     * @mbggenerated
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_apply_money
     *
     * @mbggenerated
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_apply_money
     *
     * @mbggenerated
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_apply_money
     *
     * @mbggenerated
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_apply_money
     *
     * @mbggenerated
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_apply_money
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
     * This method corresponds to the database table t_apply_money
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
     * This method corresponds to the database table t_apply_money
     *
     * @mbggenerated
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_apply_money
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
     * This class corresponds to the database table t_apply_money
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

        public Criteria andApplyIdIsNull() {
            addCriterion("apply_id is null");
            return (Criteria) this;
        }

        public Criteria andApplyIdIsNotNull() {
            addCriterion("apply_id is not null");
            return (Criteria) this;
        }

        public Criteria andApplyIdEqualTo(String value) {
            addCriterion("apply_id =", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdNotEqualTo(String value) {
            addCriterion("apply_id <>", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdGreaterThan(String value) {
            addCriterion("apply_id >", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdGreaterThanOrEqualTo(String value) {
            addCriterion("apply_id >=", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdLessThan(String value) {
            addCriterion("apply_id <", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdLessThanOrEqualTo(String value) {
            addCriterion("apply_id <=", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdLike(String value) {
            addCriterion("apply_id like", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdNotLike(String value) {
            addCriterion("apply_id not like", value, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdIn(List<String> values) {
            addCriterion("apply_id in", values, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdNotIn(List<String> values) {
            addCriterion("apply_id not in", values, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdBetween(String value1, String value2) {
            addCriterion("apply_id between", value1, value2, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyIdNotBetween(String value1, String value2) {
            addCriterion("apply_id not between", value1, value2, "applyId");
            return (Criteria) this;
        }

        public Criteria andApplyUserIdIsNull() {
            addCriterion("apply_user_id is null");
            return (Criteria) this;
        }

        public Criteria andApplyUserIdIsNotNull() {
            addCriterion("apply_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andApplyUserIdEqualTo(String value) {
            addCriterion("apply_user_id =", value, "applyUserId");
            return (Criteria) this;
        }

        public Criteria andApplyUserIdNotEqualTo(String value) {
            addCriterion("apply_user_id <>", value, "applyUserId");
            return (Criteria) this;
        }

        public Criteria andApplyUserIdGreaterThan(String value) {
            addCriterion("apply_user_id >", value, "applyUserId");
            return (Criteria) this;
        }

        public Criteria andApplyUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("apply_user_id >=", value, "applyUserId");
            return (Criteria) this;
        }

        public Criteria andApplyUserIdLessThan(String value) {
            addCriterion("apply_user_id <", value, "applyUserId");
            return (Criteria) this;
        }

        public Criteria andApplyUserIdLessThanOrEqualTo(String value) {
            addCriterion("apply_user_id <=", value, "applyUserId");
            return (Criteria) this;
        }

        public Criteria andApplyUserIdLike(String value) {
            addCriterion("apply_user_id like", value, "applyUserId");
            return (Criteria) this;
        }

        public Criteria andApplyUserIdNotLike(String value) {
            addCriterion("apply_user_id not like", value, "applyUserId");
            return (Criteria) this;
        }

        public Criteria andApplyUserIdIn(List<String> values) {
            addCriterion("apply_user_id in", values, "applyUserId");
            return (Criteria) this;
        }

        public Criteria andApplyUserIdNotIn(List<String> values) {
            addCriterion("apply_user_id not in", values, "applyUserId");
            return (Criteria) this;
        }

        public Criteria andApplyUserIdBetween(String value1, String value2) {
            addCriterion("apply_user_id between", value1, value2, "applyUserId");
            return (Criteria) this;
        }

        public Criteria andApplyUserIdNotBetween(String value1, String value2) {
            addCriterion("apply_user_id not between", value1, value2, "applyUserId");
            return (Criteria) this;
        }

        public Criteria andAuthorizeUserIdIsNull() {
            addCriterion("authorize_user_id is null");
            return (Criteria) this;
        }

        public Criteria andAuthorizeUserIdIsNotNull() {
            addCriterion("authorize_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andAuthorizeUserIdEqualTo(String value) {
            addCriterion("authorize_user_id =", value, "authorizeUserId");
            return (Criteria) this;
        }

        public Criteria andAuthorizeUserIdNotEqualTo(String value) {
            addCriterion("authorize_user_id <>", value, "authorizeUserId");
            return (Criteria) this;
        }

        public Criteria andAuthorizeUserIdGreaterThan(String value) {
            addCriterion("authorize_user_id >", value, "authorizeUserId");
            return (Criteria) this;
        }

        public Criteria andAuthorizeUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("authorize_user_id >=", value, "authorizeUserId");
            return (Criteria) this;
        }

        public Criteria andAuthorizeUserIdLessThan(String value) {
            addCriterion("authorize_user_id <", value, "authorizeUserId");
            return (Criteria) this;
        }

        public Criteria andAuthorizeUserIdLessThanOrEqualTo(String value) {
            addCriterion("authorize_user_id <=", value, "authorizeUserId");
            return (Criteria) this;
        }

        public Criteria andAuthorizeUserIdLike(String value) {
            addCriterion("authorize_user_id like", value, "authorizeUserId");
            return (Criteria) this;
        }

        public Criteria andAuthorizeUserIdNotLike(String value) {
            addCriterion("authorize_user_id not like", value, "authorizeUserId");
            return (Criteria) this;
        }

        public Criteria andAuthorizeUserIdIn(List<String> values) {
            addCriterion("authorize_user_id in", values, "authorizeUserId");
            return (Criteria) this;
        }

        public Criteria andAuthorizeUserIdNotIn(List<String> values) {
            addCriterion("authorize_user_id not in", values, "authorizeUserId");
            return (Criteria) this;
        }

        public Criteria andAuthorizeUserIdBetween(String value1, String value2) {
            addCriterion("authorize_user_id between", value1, value2, "authorizeUserId");
            return (Criteria) this;
        }

        public Criteria andAuthorizeUserIdNotBetween(String value1, String value2) {
            addCriterion("authorize_user_id not between", value1, value2, "authorizeUserId");
            return (Criteria) this;
        }

        public Criteria andImportanceIsNull() {
            addCriterion("importance is null");
            return (Criteria) this;
        }

        public Criteria andImportanceIsNotNull() {
            addCriterion("importance is not null");
            return (Criteria) this;
        }

        public Criteria andImportanceEqualTo(String value) {
            addCriterion("importance =", value, "importance");
            return (Criteria) this;
        }

        public Criteria andImportanceNotEqualTo(String value) {
            addCriterion("importance <>", value, "importance");
            return (Criteria) this;
        }

        public Criteria andImportanceGreaterThan(String value) {
            addCriterion("importance >", value, "importance");
            return (Criteria) this;
        }

        public Criteria andImportanceGreaterThanOrEqualTo(String value) {
            addCriterion("importance >=", value, "importance");
            return (Criteria) this;
        }

        public Criteria andImportanceLessThan(String value) {
            addCriterion("importance <", value, "importance");
            return (Criteria) this;
        }

        public Criteria andImportanceLessThanOrEqualTo(String value) {
            addCriterion("importance <=", value, "importance");
            return (Criteria) this;
        }

        public Criteria andImportanceLike(String value) {
            addCriterion("importance like", value, "importance");
            return (Criteria) this;
        }

        public Criteria andImportanceNotLike(String value) {
            addCriterion("importance not like", value, "importance");
            return (Criteria) this;
        }

        public Criteria andImportanceIn(List<String> values) {
            addCriterion("importance in", values, "importance");
            return (Criteria) this;
        }

        public Criteria andImportanceNotIn(List<String> values) {
            addCriterion("importance not in", values, "importance");
            return (Criteria) this;
        }

        public Criteria andImportanceBetween(String value1, String value2) {
            addCriterion("importance between", value1, value2, "importance");
            return (Criteria) this;
        }

        public Criteria andImportanceNotBetween(String value1, String value2) {
            addCriterion("importance not between", value1, value2, "importance");
            return (Criteria) this;
        }

        public Criteria andApplyKindIsNull() {
            addCriterion("apply_kind is null");
            return (Criteria) this;
        }

        public Criteria andApplyKindIsNotNull() {
            addCriterion("apply_kind is not null");
            return (Criteria) this;
        }

        public Criteria andApplyKindEqualTo(String value) {
            addCriterion("apply_kind =", value, "applyKind");
            return (Criteria) this;
        }

        public Criteria andApplyKindNotEqualTo(String value) {
            addCriterion("apply_kind <>", value, "applyKind");
            return (Criteria) this;
        }

        public Criteria andApplyKindGreaterThan(String value) {
            addCriterion("apply_kind >", value, "applyKind");
            return (Criteria) this;
        }

        public Criteria andApplyKindGreaterThanOrEqualTo(String value) {
            addCriterion("apply_kind >=", value, "applyKind");
            return (Criteria) this;
        }

        public Criteria andApplyKindLessThan(String value) {
            addCriterion("apply_kind <", value, "applyKind");
            return (Criteria) this;
        }

        public Criteria andApplyKindLessThanOrEqualTo(String value) {
            addCriterion("apply_kind <=", value, "applyKind");
            return (Criteria) this;
        }

        public Criteria andApplyKindLike(String value) {
            addCriterion("apply_kind like", value, "applyKind");
            return (Criteria) this;
        }

        public Criteria andApplyKindNotLike(String value) {
            addCriterion("apply_kind not like", value, "applyKind");
            return (Criteria) this;
        }

        public Criteria andApplyKindIn(List<String> values) {
            addCriterion("apply_kind in", values, "applyKind");
            return (Criteria) this;
        }

        public Criteria andApplyKindNotIn(List<String> values) {
            addCriterion("apply_kind not in", values, "applyKind");
            return (Criteria) this;
        }

        public Criteria andApplyKindBetween(String value1, String value2) {
            addCriterion("apply_kind between", value1, value2, "applyKind");
            return (Criteria) this;
        }

        public Criteria andApplyKindNotBetween(String value1, String value2) {
            addCriterion("apply_kind not between", value1, value2, "applyKind");
            return (Criteria) this;
        }

        public Criteria andApplyStatusIsNull() {
            addCriterion("apply_status is null");
            return (Criteria) this;
        }

        public Criteria andApplyStatusIsNotNull() {
            addCriterion("apply_status is not null");
            return (Criteria) this;
        }

        public Criteria andApplyStatusEqualTo(String value) {
            addCriterion("apply_status =", value, "applyStatus");
            return (Criteria) this;
        }

        public Criteria andApplyStatusNotEqualTo(String value) {
            addCriterion("apply_status <>", value, "applyStatus");
            return (Criteria) this;
        }

        public Criteria andApplyStatusGreaterThan(String value) {
            addCriterion("apply_status >", value, "applyStatus");
            return (Criteria) this;
        }

        public Criteria andApplyStatusGreaterThanOrEqualTo(String value) {
            addCriterion("apply_status >=", value, "applyStatus");
            return (Criteria) this;
        }

        public Criteria andApplyStatusLessThan(String value) {
            addCriterion("apply_status <", value, "applyStatus");
            return (Criteria) this;
        }

        public Criteria andApplyStatusLessThanOrEqualTo(String value) {
            addCriterion("apply_status <=", value, "applyStatus");
            return (Criteria) this;
        }

        public Criteria andApplyStatusLike(String value) {
            addCriterion("apply_status like", value, "applyStatus");
            return (Criteria) this;
        }

        public Criteria andApplyStatusNotLike(String value) {
            addCriterion("apply_status not like", value, "applyStatus");
            return (Criteria) this;
        }

        public Criteria andApplyStatusIn(List<String> values) {
            addCriterion("apply_status in", values, "applyStatus");
            return (Criteria) this;
        }

        public Criteria andApplyStatusNotIn(List<String> values) {
            addCriterion("apply_status not in", values, "applyStatus");
            return (Criteria) this;
        }

        public Criteria andApplyStatusBetween(String value1, String value2) {
            addCriterion("apply_status between", value1, value2, "applyStatus");
            return (Criteria) this;
        }

        public Criteria andApplyStatusNotBetween(String value1, String value2) {
            addCriterion("apply_status not between", value1, value2, "applyStatus");
            return (Criteria) this;
        }

        public Criteria andPayStatusIsNull() {
            addCriterion("pay_status is null");
            return (Criteria) this;
        }

        public Criteria andPayStatusIsNotNull() {
            addCriterion("pay_status is not null");
            return (Criteria) this;
        }

        public Criteria andPayStatusEqualTo(String value) {
            addCriterion("pay_status =", value, "payStatus");
            return (Criteria) this;
        }

        public Criteria andPayStatusNotEqualTo(String value) {
            addCriterion("pay_status <>", value, "payStatus");
            return (Criteria) this;
        }

        public Criteria andPayStatusGreaterThan(String value) {
            addCriterion("pay_status >", value, "payStatus");
            return (Criteria) this;
        }

        public Criteria andPayStatusGreaterThanOrEqualTo(String value) {
            addCriterion("pay_status >=", value, "payStatus");
            return (Criteria) this;
        }

        public Criteria andPayStatusLessThan(String value) {
            addCriterion("pay_status <", value, "payStatus");
            return (Criteria) this;
        }

        public Criteria andPayStatusLessThanOrEqualTo(String value) {
            addCriterion("pay_status <=", value, "payStatus");
            return (Criteria) this;
        }

        public Criteria andPayStatusLike(String value) {
            addCriterion("pay_status like", value, "payStatus");
            return (Criteria) this;
        }

        public Criteria andPayStatusNotLike(String value) {
            addCriterion("pay_status not like", value, "payStatus");
            return (Criteria) this;
        }

        public Criteria andPayStatusIn(List<String> values) {
            addCriterion("pay_status in", values, "payStatus");
            return (Criteria) this;
        }

        public Criteria andPayStatusNotIn(List<String> values) {
            addCriterion("pay_status not in", values, "payStatus");
            return (Criteria) this;
        }

        public Criteria andPayStatusBetween(String value1, String value2) {
            addCriterion("pay_status between", value1, value2, "payStatus");
            return (Criteria) this;
        }

        public Criteria andPayStatusNotBetween(String value1, String value2) {
            addCriterion("pay_status not between", value1, value2, "payStatus");
            return (Criteria) this;
        }

        public Criteria andMoneyIsNull() {
            addCriterion("money is null");
            return (Criteria) this;
        }

        public Criteria andMoneyIsNotNull() {
            addCriterion("money is not null");
            return (Criteria) this;
        }

        public Criteria andMoneyEqualTo(BigDecimal value) {
            addCriterion("money =", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyNotEqualTo(BigDecimal value) {
            addCriterion("money <>", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyGreaterThan(BigDecimal value) {
            addCriterion("money >", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("money >=", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyLessThan(BigDecimal value) {
            addCriterion("money <", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyLessThanOrEqualTo(BigDecimal value) {
            addCriterion("money <=", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyIn(List<BigDecimal> values) {
            addCriterion("money in", values, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyNotIn(List<BigDecimal> values) {
            addCriterion("money not in", values, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("money between", value1, value2, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("money not between", value1, value2, "money");
            return (Criteria) this;
        }

        public Criteria andTargetKindIsNull() {
            addCriterion("target_kind is null");
            return (Criteria) this;
        }

        public Criteria andTargetKindIsNotNull() {
            addCriterion("target_kind is not null");
            return (Criteria) this;
        }

        public Criteria andTargetKindEqualTo(String value) {
            addCriterion("target_kind =", value, "targetKind");
            return (Criteria) this;
        }

        public Criteria andTargetKindNotEqualTo(String value) {
            addCriterion("target_kind <>", value, "targetKind");
            return (Criteria) this;
        }

        public Criteria andTargetKindGreaterThan(String value) {
            addCriterion("target_kind >", value, "targetKind");
            return (Criteria) this;
        }

        public Criteria andTargetKindGreaterThanOrEqualTo(String value) {
            addCriterion("target_kind >=", value, "targetKind");
            return (Criteria) this;
        }

        public Criteria andTargetKindLessThan(String value) {
            addCriterion("target_kind <", value, "targetKind");
            return (Criteria) this;
        }

        public Criteria andTargetKindLessThanOrEqualTo(String value) {
            addCriterion("target_kind <=", value, "targetKind");
            return (Criteria) this;
        }

        public Criteria andTargetKindLike(String value) {
            addCriterion("target_kind like", value, "targetKind");
            return (Criteria) this;
        }

        public Criteria andTargetKindNotLike(String value) {
            addCriterion("target_kind not like", value, "targetKind");
            return (Criteria) this;
        }

        public Criteria andTargetKindIn(List<String> values) {
            addCriterion("target_kind in", values, "targetKind");
            return (Criteria) this;
        }

        public Criteria andTargetKindNotIn(List<String> values) {
            addCriterion("target_kind not in", values, "targetKind");
            return (Criteria) this;
        }

        public Criteria andTargetKindBetween(String value1, String value2) {
            addCriterion("target_kind between", value1, value2, "targetKind");
            return (Criteria) this;
        }

        public Criteria andTargetKindNotBetween(String value1, String value2) {
            addCriterion("target_kind not between", value1, value2, "targetKind");
            return (Criteria) this;
        }

        public Criteria andExpenditureRemarkIsNull() {
            addCriterion("expenditure_remark is null");
            return (Criteria) this;
        }

        public Criteria andExpenditureRemarkIsNotNull() {
            addCriterion("expenditure_remark is not null");
            return (Criteria) this;
        }

        public Criteria andExpenditureRemarkEqualTo(String value) {
            addCriterion("expenditure_remark =", value, "expenditureRemark");
            return (Criteria) this;
        }

        public Criteria andExpenditureRemarkNotEqualTo(String value) {
            addCriterion("expenditure_remark <>", value, "expenditureRemark");
            return (Criteria) this;
        }

        public Criteria andExpenditureRemarkGreaterThan(String value) {
            addCriterion("expenditure_remark >", value, "expenditureRemark");
            return (Criteria) this;
        }

        public Criteria andExpenditureRemarkGreaterThanOrEqualTo(String value) {
            addCriterion("expenditure_remark >=", value, "expenditureRemark");
            return (Criteria) this;
        }

        public Criteria andExpenditureRemarkLessThan(String value) {
            addCriterion("expenditure_remark <", value, "expenditureRemark");
            return (Criteria) this;
        }

        public Criteria andExpenditureRemarkLessThanOrEqualTo(String value) {
            addCriterion("expenditure_remark <=", value, "expenditureRemark");
            return (Criteria) this;
        }

        public Criteria andExpenditureRemarkLike(String value) {
            addCriterion("expenditure_remark like", value, "expenditureRemark");
            return (Criteria) this;
        }

        public Criteria andExpenditureRemarkNotLike(String value) {
            addCriterion("expenditure_remark not like", value, "expenditureRemark");
            return (Criteria) this;
        }

        public Criteria andExpenditureRemarkIn(List<String> values) {
            addCriterion("expenditure_remark in", values, "expenditureRemark");
            return (Criteria) this;
        }

        public Criteria andExpenditureRemarkNotIn(List<String> values) {
            addCriterion("expenditure_remark not in", values, "expenditureRemark");
            return (Criteria) this;
        }

        public Criteria andExpenditureRemarkBetween(String value1, String value2) {
            addCriterion("expenditure_remark between", value1, value2, "expenditureRemark");
            return (Criteria) this;
        }

        public Criteria andExpenditureRemarkNotBetween(String value1, String value2) {
            addCriterion("expenditure_remark not between", value1, value2, "expenditureRemark");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_apply_money
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
     * This class corresponds to the database table t_apply_money
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