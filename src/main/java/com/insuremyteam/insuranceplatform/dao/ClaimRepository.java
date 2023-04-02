package com.insuremyteam.insuranceplatform.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.insuremyteam.insuranceplatform.entity.Claim;

public interface ClaimRepository extends JpaRepository<Claim, Integer>{

}
