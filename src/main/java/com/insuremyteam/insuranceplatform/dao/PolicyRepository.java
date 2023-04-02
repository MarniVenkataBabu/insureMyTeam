package com.insuremyteam.insuranceplatform.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.insuremyteam.insuranceplatform.entity.Policy;

public interface PolicyRepository extends JpaRepository<Policy, Integer>{

}
