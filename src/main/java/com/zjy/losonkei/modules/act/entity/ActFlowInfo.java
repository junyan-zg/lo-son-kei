package com.zjy.losonkei.modules.act.entity;

import javax.xml.soap.Detail;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/2/26.
 */
public class ActFlowInfo implements Serializable {

    private String formName;

    private String taskName;

    private List<Detail> details;

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    private Map<String,Detail> valueMap;

    public ActFlowInfo(){

    }

    public Object getValue(String value){
        if (valueMap == null){
            return null;
        }
        return valueMap.get(value).getValue();
    }

    public ActFlowInfo(String formName,String taskName,Detail ... details){
        this.formName = formName;
        this.taskName = taskName;
        this.details = new ArrayList<Detail>();
        this.valueMap = new HashMap<String, Detail>();
        for (Detail d : details){
            this.details.add(d);
            valueMap.put("formValue",d);
        }
    }

    public static class Detail{
        private String formValue;
        private String formLabel;
        private Boolean trueValue;  //该字段针对把true改成1,false改成0

        public Detail() {}

        public Detail(String formValue, String formLabel) {
            this.formValue = formValue;
            this.formLabel = formLabel;
        }

        public Object getValue(){
            return trueValue == null ? formValue : trueValue;
        }

        public Detail(String formValue, String formLabel,Boolean trueValue) {
            this.formValue = formValue;
            this.formLabel = formLabel;
            this.trueValue = trueValue;
        }

        public String getFormValue() {
            return formValue;
        }

        public void setFormValue(String formValue) {
            this.formValue = formValue;
        }

        public String getFormLabel() {
            return formLabel;
        }

        public void setFormLabel(String formLabel) {
            this.formLabel = formLabel;
        }

        public Boolean getTrueValue() {
            return trueValue;
        }

        public void setTrueValue(Boolean trueValue) {
            this.trueValue = trueValue;
        }
    }


    public List<Detail> getDetails() {
        return details;
    }

    public void setDetails(List<Detail> details) {
        this.details = details;
    }

    public String getFormName() {
        return formName;
    }

    public void setFormName(String formName) {
        this.formName = formName;
    }


}
