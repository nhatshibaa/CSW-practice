package com.example.nguyentiennhat;

import java.io.Serializable;
import java.util.List;

public interface IProduct extends Serializable {
    Product save(Product product);

    List<Product> findAll();

}
