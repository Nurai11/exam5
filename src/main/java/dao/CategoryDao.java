package dao;

import entities.Category;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import util.HibernateUtil;

import java.util.List;

public class CategoryDao {
    public Integer create(Category category) {
        Session session = HibernateUtil.buildSessionFactory().openSession();
        session.beginTransaction();
        session.saveOrUpdate(category);
        session.getTransaction().commit();
        session.close();
        System.out.println(category.toString());
        return category.getId();
    }

    public Category update(Category category) {
        Session session = HibernateUtil.buildSessionFactory().openSession();
        session.beginTransaction();
        Category category1 = (Category) session.load(Category.class, category.getId());
        category1.setName(category1.getName());
        session.getTransaction().commit();
        session.close();
        return category;
    }

    public List<Category> CategoryView(){
        Session session = HibernateUtil.buildSessionFactory().openSession();
        String sql = "SELECT * FROM category";
        SQLQuery query = session.createSQLQuery(sql);
        query.addEntity(Category.class);
        List<Category> categories = query.list();
        session.close();
        System.out.println(categories);
        return categories;
    }
}
