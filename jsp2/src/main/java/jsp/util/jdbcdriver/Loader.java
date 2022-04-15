package jsp.util.jdbcdriver;

import java.util.StringTokenizer;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class Loader extends HttpServlet{

	@Override
	public void init(ServletConfig config) throws ServletException {
		try {
			String dirvers = config.getInitParameter("jdbcdriver");
			StringTokenizer st = new StringTokenizer(dirvers, ",");
			
			while(st.hasMoreTokens()) 
			{
				String jdbcDriver = st.nextToken();
				Class.forName(jdbcDriver);
			}
			System.out.println("Loader class 실행");
		}catch (Exception e) {
			throw new ServletException();
		}
	}
}
