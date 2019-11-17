/**
 * 
 */
package com.students.domain;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 *
 */
public class Phone implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@NotNull(message = "{NotNull}")
	@Min(value=100, message="{three.digits}")
	@Max(value=999, message="{three.digits}")
  	private Integer area;

	@NotNull(message = "{NotNull}")
	@Min(value=100, message="{three.digits}")
	@Max(value=999, message="{three.digits}")
	private Integer prefix;

	@NotNull(message = "{NotNull}")
	@Min(value=1000, message="{four.digits}")
	@Max(value=9999, message="{four.digits}")
	private Integer number;
	

 
	public Integer getArea() {
		return area;
	}

	public void setArea(Integer area) {
		this.area = area;
	}

 	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public Integer getPrefix() {
		return prefix;
	}

	public void setPrefix(Integer prefix) {
		this.prefix = prefix;
	}
}
