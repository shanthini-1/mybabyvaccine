/**
 * 
 */
package com.chainsys.mybabyvaccine.commonutils;

/**
 * @author shan3102
 *
 */
public class InvalidInputDataException extends Exception{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7734128162414730236L;
	public InvalidInputDataException() {
		super("The Input Data is not valid");
	}
	public InvalidInputDataException(String message) {
		super(message);
	}
}
