package vn.iotstar.services.impl;

import java.util.List;

import vn.iotstar.dao.CategoryDAO;
import vn.iotstar.dao.impl.CategoryDAOImpl;
import vn.iotstar.entity.Category;
import vn.iotstar.services.CategoryService;

public class CategoryServiceImpl implements CategoryService{
    CategoryDAO cateDao = new CategoryDAOImpl();

    @Override
    public void insert(Category category) {
        cateDao.create(category);

    }

    @Override
    public void edit(Category category) {
        cateDao.update(category);

    }

    @Override
    public void delete(int id) {
        cateDao.remove(id);
    }

    @Override
    public Category getIdCategory(int id) {
        return cateDao.findById(id);
    }

    @Override
    public Category getNameCategory(String name) {
        return cateDao.findByName(name);
    }

    @Override
    public List<Category> getAll() {
        return cateDao.findAll();
    }

    @Override
    public List<Category> search(String keyword) {
        return cateDao.search(keyword);
    }

}