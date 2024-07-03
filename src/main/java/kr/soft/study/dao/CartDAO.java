package kr.soft.study.dao;

import java.util.List;

import kr.soft.study.dto.CartDTO;

public interface CartDAO {
    void addCartItem(CartDTO cartItem);
    List<CartDTO> getCartItemsByUser(int kNumber);
    void deleteCartItem(int cartItemId);
}
