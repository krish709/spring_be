package com.example.crudapp.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.crudapp.Entities.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
    
}
