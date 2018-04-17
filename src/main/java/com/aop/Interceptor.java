package com.aop;

import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class Interceptor {
    /**
     * 声明一个切点。切入点名称为anyMethod
     */
    @Pointcut("execution(* com.serviceImp.UserServiceImpl.* (..)) " )
    private  void anyMethod(){}

    /**
     * 声明该方法是一个前置通知。在目标方法开始之前执行
     */
    @Before("anyMethod()")
    public  void doAccessCheck() {
        System.out.println("前置通知");
    }

    @AfterReturning("anyMethod()")
    public void doAfterReturning(){
        System.out.println("后置通知");
    }

    @After("anyMethod()")
    public  void doAfter() {
        System.out.println("最终通知");
    }

    @AfterThrowing("anyMethod()")
    public  void doAfterThrowing() {
        System.out.println("异常通知");
    }

}
