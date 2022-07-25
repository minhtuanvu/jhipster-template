package vn.com.pvcombank.repository;

import org.springframework.data.jpa.repository.*;
import org.springframework.stereotype.Repository;
import vn.com.pvcombank.domain.A;

/**
 * Spring Data SQL repository for the A entity.
 */
@SuppressWarnings("unused")
@Repository
public interface ARepository extends JpaRepository<A, Long> {}
