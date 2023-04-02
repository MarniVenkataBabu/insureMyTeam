package com.insuremyteam.insuranceplatform.service;
import java.util.List;
import com.insuremyteam.insuranceplatform.entity.Policy;

public interface PolicyService {
    public List<Policy> findAll();
    public Policy findById(int theId);
    public void save(Policy thePolicy);
    public void deleteById(int theId);
}
