package com.catalog.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.catalog.dto.BrandSummaryDTO;
import com.catalog.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    @Query("SELECT new com.catalog.dto.BrandSummaryDTO(p.brand, COUNT(p)) FROM Product p GROUP BY p.brand")
    List<BrandSummaryDTO> getBrandSummary();
}
