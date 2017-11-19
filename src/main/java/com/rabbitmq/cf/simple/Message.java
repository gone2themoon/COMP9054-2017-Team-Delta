package com.rabbitmq.cf.simple;

public class Message {
    private String value;
    private String valuelocal;

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getValueLocal() {
        return valuelocal;
    }

    public void setValueLocal(String value) {
        this.valuelocal = value;
    }
}