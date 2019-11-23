package com.qfedu.ssm.service;

import com.qfedu.ssm.service.bo.Document;

import java.util.List;

public interface IDocService {

    //增加
    public void insert(Document document);

    public Document getId(Integer id);

    //更改
    public void update(Document document);

    //删除
    public void delete(Integer id);

    //查询
    public List<Document> list();
}
