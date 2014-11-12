package com.yfann.web.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target(value={ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
/**
 * 是否检查用户登录**标记注解
 * @author Simon
 *
 */
public @interface UserSessionCheck {

}
