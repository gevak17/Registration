package gevak.dao;

import gevak.entity.UserLogin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Set;

public interface UserLoginDAO extends JpaRepository<UserLogin, Integer> {
    @Query("from UserLogin u where u.user=:user")
    Set<UserLogin> findByUser(@Param("user") Integer operator_id);
}
