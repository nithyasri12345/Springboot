package com.example.stdmanage.repo;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.stdmanage.model.PathModel;

public interface PathRepo extends JpaRepository<PathModel,Integer> {

}
