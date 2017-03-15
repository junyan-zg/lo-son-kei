package com.zjy.losonkei.modules.analysis.utils;

import com.zjy.losonkei.common.utils.Collections3;
import org.apache.commons.lang3.time.DateFormatUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by Administrator on 2017/3/15.
 */
public class DateUtils {

    public static Date[] getBetweenDate(String type,Date date) throws ParseException{
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat sdfBegin;
        SimpleDateFormat sdfEnd;

        if ("1".equals(type)){
            sdfBegin = new SimpleDateFormat("yyyy-MM-dd 00:00:00");
            sdfEnd = new SimpleDateFormat("yyyy-MM-dd 23:59:59");
        }else if ("2".equals(type)){
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.set(Calendar.DATE, calendar.getActualMaximum(Calendar.DATE));
            date = calendar.getTime();

            sdfBegin = new SimpleDateFormat("yyyy-MM-01 00:00:00");
            sdfEnd = new SimpleDateFormat("yyyy-MM-dd 23:59:59");
        }else if ("3".equals(type)){
            sdfBegin = new SimpleDateFormat("yyyy-01-01 00:00:00");
            sdfEnd = new SimpleDateFormat("yyyy-12-31 00:00:00");
        }else {
            throw new IllegalArgumentException();
        }
        return new Date[]{sdf.parse(sdfBegin.format(date)), sdf.parse(sdfEnd.format(date))};
    }

    public static List<DescDate> getCloseDate(String type,Date date){
        return getCloseDate(type,date,5);
    }

    public static List<DescDate> getCloseDate(String type,Date date,int num){
        List<DescDate> list = new ArrayList<DescDate>();

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int field = Calendar.DATE;
        String patten = "dd";
        if ("2".equals(type)){
            field = Calendar.MONTH;
            patten = "MM";
        }else if ("3".equals(type)){
            field = Calendar.YEAR;
            patten = "yyyy";
        }

        for (int i = 0; i < num; i++){
            if (i > 0){
                calendar.set(field, calendar.get(field) - 1);
            }
            Date time = calendar.getTime();
            list.add(new DescDate(DateFormatUtils.format(time,patten),time));
        }
        Collections.reverse(list);
        return list;
    }

//    public static void main(String[] args) throws ParseException {
//        System.out.println(getBetweenDate("3",new Date())[1]);
//        System.out.println(getCloseDate("3",new Date()));
//    }

    public static class DescDate {
        private String name;
        private Date date;

//        @Override
//        public String toString() {
//            return "DescDate[" + name + "-"
//                    + DateFormatUtils.format(date,"yyyy-MM-dd") +
//                    "]\n";
//        }

        public DescDate(String name, Date date){
            this.name = name;
            this.date = date;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public Date getDate() {
            return date;
        }

        public void setDate(Date date) {
            this.date = date;
        }
    }

}
