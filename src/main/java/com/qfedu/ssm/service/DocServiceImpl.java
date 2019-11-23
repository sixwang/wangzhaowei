package com.qfedu.ssm.service;


import com.qfedu.ssm.dao.IDocDao;
import com.qfedu.ssm.service.bo.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Service
public class DocServiceImpl implements IDocService{

    @Autowired
    private IDocDao docDao;

    @Override
    @Transactional
    public void insert(Document document) {
        docDao.insert(document);
    }

    @Override
    public Document getId(Integer id) {
        return docDao.getId(id);
    }

    @Override
    @Transactional
    public void update(Document document) {
        docDao.update(document);
    }

    @Override
    @Transactional
    public void delete(Integer id) {

        docDao.delete(id);

    }

    @Override
    public List<Document> list() {
        return docDao.list();
    }
}
