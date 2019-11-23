package com.qfedu.ssm.dao;

import com.qfedu.ssm.service.bo.Document;
import org.springframework.stereotype.Repository;

import javax.print.Doc;
import java.util.List;


@Repository
public interface IDocDao {

    //增加
    public void insert(Document document);

    // 获取ID
    public Document getId(Integer id);

    //更改
    public void update(Document document);

    //删除
    public void delete(Integer id);

    //查询
    public List<Document> list();
}
