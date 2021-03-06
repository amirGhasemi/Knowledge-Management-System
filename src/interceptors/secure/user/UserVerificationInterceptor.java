package interceptors.secure.user;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

import user.Role;
import user.User;

public class UserVerificationInterceptor implements Interceptor{

	@Override
	public void destroy() {

	}

	@Override
	public void init() {
		
	}

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		boolean isUserAdmin = false;
		Map httpSession = (Map) ActionContext.getContext().get("session");
		User user = (User)httpSession.get("user");
		
		if(user != null){
			if(user.getRole().equals(Role.ADMIN)){
				isUserAdmin = true;
			}
		}
		
		
		if(isUserAdmin){
			return actionInvocation.invoke();
		} else{
			return "AccessDeniedResult";
		}
	}

}
