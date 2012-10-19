package com.kendoui.taglib.datasource;

import javax.servlet.jsp.JspException;

import com.kendoui.taglib.BaseTag;

@SuppressWarnings("serial")
public class ReadTag extends BaseTag {
    @Override
    public int doEndTag() throws JspException {
        TransportTag transport = (TransportTag)findParentWithClass(TransportTag.class);

        transport.setRead(this);

        return super.doEndTag();
    }
    
//>> Attributes

    public static String tagName() {
        return "dataSource-transport-read";
    }

    public boolean getCache() {
        return (boolean)getProperty("cache");
    }

    public void setCache(boolean value) {
        setProperty("cache", value);
    }

    public String getContentType() {
        return (String)getProperty("contentType");
    }

    public void setContentType(String value) {
        setProperty("contentType", value);
    }

    public String getDataType() {
        return (String)getProperty("dataType");
    }

    public void setDataType(String value) {
        setProperty("dataType", value);
    }

    public String getType() {
        return (String)getProperty("type");
    }

    public void setType(String value) {
        setProperty("type", value);
    }

    public String getUrl() {
        return (String)getProperty("url");
    }

    public void setUrl(String value) {
        setProperty("url", value);
    }

//<< Attributes
}
