package vn.com.pvcombank.repository;

import org.springframework.data.jpa.repository.*;
import org.springframework.stereotype.Repository;
import vn.com.pvcombank.domain.D;

/**
 * Spring Data SQL repository for the D entity.
 */
@SuppressWarnings("unused")
@Repository
public interface DRepository extends JpaRepository<D, Long> {}
