package com.xtf.utils;

import com.xtf.po.Admin;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest,
                             HttpServletResponse httpServletResponse, Object o) throws Exception {
        boolean flag = true;

        if (!(o instanceof HandlerMethod)) {
            return flag;
        }

        HandlerMethod handlerMethod = (HandlerMethod) o;
        RequireAuth auth = handlerMethod.getMethodAnnotation(RequireAuth.class);
        HttpSession session = httpServletRequest.getSession();
        Admin admin = (Admin) session.getAttribute("admin");

        if (auth != null) {
            if (admin == null) {
                httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/logout.do");
                flag = false;
            } else {
                if (admin.getRoleid() != 1){
                    httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/logout.do");
                    flag = false;
                }
            }
        }

        return flag;

    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
