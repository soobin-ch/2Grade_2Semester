/**
 * 파일명 : Calculator.java
 * 작성일 : 2025. 9. 17.
 * 설명   :
*/
package jsproject.ch04;

/**
 * @author admin
 *
 */
public class Calculator {

	int result = 0;
	
	public Calculator(int num1, int num2, String op) {
		if(op.equals("+")) {
			result = num1 + num2;
		}else if(op.equals("-")) {
			result = num1 - num2;
		}else if(op.equals("*")) {
			result = num1 * num2;
		}else if(op.equals("/")) {
			result = num1 / num2;
		}
	}
	
	
	public int getResult() {
		return result;
	}
	
	
}
