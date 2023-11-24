package com.webproject.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.webproject.entity.Cart;

@Repository
public interface CartRepo extends JpaRepository<Cart, Long> {
	@Query(value = "Select * from Cart where user_id=?1 and store_id = ?2", nativeQuery = true)
	Optional<Cart> findCartByUserIdAndStoreId(Long userId, Long storeId);
	
	@Query(value = "SELECT _id FROM Cart WHERE user_id = ? GROUP BY _id", nativeQuery = true)
	List<Long> getAllCartIdOfUser(Long userId);
}
