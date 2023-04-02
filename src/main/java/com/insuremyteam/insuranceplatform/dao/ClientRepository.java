package com.insuremyteam.insuranceplatform.dao;
import org.springframework.data.jpa.repository.JpaRepository;

import com.insuremyteam.insuranceplatform.entity.Client;

public interface ClientRepository extends JpaRepository<Client, Integer>{

}
