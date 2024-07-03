package kr.soft.study.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.soft.study.dao.CartDAO;
import kr.soft.study.dto.CartDTO;

@Service
public class CartService {
    @Autowired
    private SqlSession sqlSession;

    public void addCartItem(CartDTO cartItem) {
        sqlSession.insert("kr.soft.study.dao.CartDAO.addCartItem", cartItem);
    }

    public List<CartDTO> getCartItemsByUser(int kNumber) {
        return sqlSession.selectList("kr.soft.study.dao.CartDAO.getCartItemsByUser", kNumber);
    }

    public void deleteCartItem(int cartItemId) {
        sqlSession.delete("kr.soft.study.dao.CartDAO.deleteCartItem", cartItemId);
    }
}
