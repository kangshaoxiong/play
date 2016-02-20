package net.kangshao.play.common.beanvalidator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.apache.commons.lang.StringUtils;

import net.kangshao.play.common.utils.ValidatorUtil;

public class MobileValidator implements ConstraintValidator<Mobile,String>{

	/**
	 * 初始化参数
	 */
	@Override
	public void initialize(Mobile annotation) {
		
	}

	/***
	 * 实现验证
	 */
	@Override
	public boolean isValid(String value, ConstraintValidatorContext context) {
		if(StringUtils.isBlank(value)){
			return false;
		}
		return ValidatorUtil.isMobile(value);
	}

}
