package vn.com.pvcombank.repository;

import org.springframework.data.jpa.repository.*;
import org.springframework.stereotype.Repository;
import vn.com.pvcombank.domain.C;

/**
 * Spring Data SQL repository for the C entity.
 */
@SuppressWarnings("unused")
@Repository
public interface CRepository extends JpaRepository<C, Long> {}
