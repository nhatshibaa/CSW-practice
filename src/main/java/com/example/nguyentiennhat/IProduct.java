package com.example.nguyentiennhat;

import java.util.List;

public interface IProduct {
    Product save(Product product);

    List<Product> findAll();

}
