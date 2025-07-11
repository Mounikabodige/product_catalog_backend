package com.catalog.service;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

import java.util.List;

import com.catalog.dto.BrandSummaryDTO;
import com.catalog.repository.ProductRepository;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class ProductServiceTest {

    @Mock
    private ProductRepository repo;

    @InjectMocks
    private ProductService service;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testGetBrandSummary() {
        // Arrange
        List<BrandSummaryDTO> mockSummary = List.of(
                new BrandSummaryDTO("Sony", 5L),
                new BrandSummaryDTO("Forever 21", 2L)
        );

        when(repo.getBrandSummary()).thenReturn(mockSummary);

        // Act
        List<BrandSummaryDTO> result = service.getBrandSummary();

        // Assert
        assertNotNull(result);
        assertEquals(2, result.size());
        assertEquals("Sony", result.get(0).getBrand());
        assertEquals(5, result.get(0).getCount());
        assertEquals("Forever 21", result.get(1).getBrand());
        assertEquals(2, result.get(1).getCount());

        verify(repo, times(1)).getBrandSummary();
    }
}
