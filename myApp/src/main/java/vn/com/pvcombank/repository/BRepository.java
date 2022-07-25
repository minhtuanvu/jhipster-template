package vn.com.pvcombank.repository;

import org.springframework.data.jpa.repository.*;
import org.springframework.stereotype.Repository;
import vn.com.pvcombank.domain.B;

/**
 * Spring Data SQL repository for the B entity.
 */
@SuppressWarnings("unused")
@Repository
public interface BRepository extends JpaRepository<B, Long> {}
