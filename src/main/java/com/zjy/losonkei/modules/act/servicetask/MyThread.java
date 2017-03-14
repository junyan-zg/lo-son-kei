package com.zjy.losonkei.modules.act.servicetask;

/**
 * Created by Administrator on 2017/3/14.
 */

/**
 * 重要！在compile完成后，同一个事务会顺便执行serviceTask，这样才是完成compile
 */
public abstract class MyThread extends Thread {
    private String b;
    private String a;

    public MyThread(String b,String a){
        this.b = b;
        this.a = a;
    }

    public String getB() {
        return b;
    }

    public void setB(String b) {
        this.b = b;
    }

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }
}
