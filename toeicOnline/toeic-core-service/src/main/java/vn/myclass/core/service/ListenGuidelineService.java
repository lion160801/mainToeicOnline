package vn.myclass.core.service;

public interface ListenGuidelineService  {
    Object[] findListenGuidelineByProperties(String property, Object value, String sortExpression, String sortDirection, Integer offset, Integer limit);
}
