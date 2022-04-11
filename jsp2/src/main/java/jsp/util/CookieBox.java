package jsp.util;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class CookieBox {
	private Map<String, Cookie> cookieMap = new HashMap<String, Cookie>();
	
	public CookieBox(HttpServletRequest request) 
	{
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null)
		{
			// 인자로 전달받은 request로부터 Cookies 배열을 읽어와서
			// 각각의 Cookie 객체를 cookieMap에 저장
			for(int i=0; i<cookies.length; i++)
			{
				cookieMap.put(cookies[i].getName(), cookies[i]);
			}
		}
	}
	
	/**
	 * 쿠기 생성
	 * @param name  : 쿠기 이름
	 * @param value : 쿠기 값
	 * @return 생성한 쿠기 객체
	 * @throws UnsupportedEncodingException 인코딩 오류
	 */
	public static Cookie createCookie(String name, String value) throws UnsupportedEncodingException
	{
		return new Cookie(name, URLEncoder.encode(value, "UTF-8"));
	}

	/**
	 * 쿠기 생성
	 * @param name   : 쿠키 이름
	 * @param value  : 쿠기 값
	 * @param path   : 쿠기 경로
	 * @param maxAge : 쿠기 수명(초)
	 * @return 생성한 쿠기 객체
	 * @throws UnsupportedEncodingException 인코딩 오류
	 */
	public static Cookie createCookie(String name, String value, String path, int maxAge) throws UnsupportedEncodingException
	{
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "UTF-8"));
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		return cookie;
	}
	
	/**
	 * 쿠기 생성
	 * @param name   : 쿠키 이름
	 * @param value  : 쿠기 값
	 * @param domain : 쿠기 도메인
	 * @param path   : 쿠기 경로
	 * @param maxAge : 쿠기 수명(초)
	 * @return 생성한 쿠기 객체
	 * @throws UnsupportedEncodingException 인코딩 오류
	 */
	public static Cookie createCookie(String name, String value, String domain, String path, int maxAge) throws UnsupportedEncodingException
	{
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "UTF-8"));
		cookie.setDomain(domain);
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		return cookie;
	}
	
	/**
	 * 쿠기 가져오기
	 * @param name : 가져올 쿠기 이름
	 * @return 쿠기 객체
	 */
	public Cookie getCookie(String name)
	{
		return cookieMap.get(name);
	}
	
	/**
	 * 쿠기 값 가져오기
	 * @param name : 쿠기 이름
	 * @return 쿠기 값
	 * @throws UnsupportedEncodingException 인코딩 오류
	 */
	public String getValue(String name) throws UnsupportedEncodingException
	{
		Cookie cookie = cookieMap.get(name);
		
		return cookie == null ? null 
							  : URLDecoder.decode(cookie.getValue(), "UTF-8");
	}

	/**
	 * 쿠기가 존재하는지 검사
	 * @param name : 쿠기 이름
	 * @return true==쿠기 존재, false==쿠기 존재하지 않음
	 */
	public boolean exists(String name)
	{
		return cookieMap.get(name) != null;
	}
	
	
}
