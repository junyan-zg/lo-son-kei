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

    public ActFlowInfo(String formName,String taskName,Detail ... details){
        this.formName = formName;
        this.taskName = taskName;
        this.details = new ArrayList<Detail>();
        this.valueMap = new HashMap<String, Detail>();
        for (Detail d : details){
            this.details.add(d);
            valueMap.put(d.getFormValue(),d);
        }
    }

    public static class Detail{
        private String formValue;
        private String formLabel;

        public Detail() {}

        public Detail(String formValue, String formLabel) {
            this.formValue = formValue;
            this.formLabel = formLabel;
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
