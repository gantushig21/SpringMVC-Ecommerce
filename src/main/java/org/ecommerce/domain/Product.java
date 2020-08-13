package org.ecommerce.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
public class Product implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Pattern(regexp = "P[1-9]+", message="{Pattern.Product.productId.validation}")
    private String id;

    @Size(min=4, max=50, message="{Size.Product.name.validation}")
    private String name;

    @Min(value=0, message="Min.Product.unitPrice.validation}")
    @Digits(integer=8, fraction=2, message="{Digits.Product.unitPrice.validation}")
    @NotNull(message= "{NotNull.Product.unitPrice.validation}")
    @NumberFormat(style= NumberFormat.Style.CURRENCY)
    private BigDecimal unitPrice;

    @Column(length = 1000)
    private String description;
    private String manufacturer;
    private String category;

    private long unitsInStock;
    private long unitsInOrder;
    private boolean discontinued;

    @Column(name = "cond")
    private String condition;

    @JsonIgnore
    @Transient
    private MultipartFile productImage;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private LocalDateTime activeDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private LocalDateTime createdDate;

    public Product() {
    }

    public Product(String id, String name, BigDecimal unitPrice) {
        this.id = id;
        this.name = name;
        this.unitPrice = unitPrice;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public long getUnitsInStock() {
        return unitsInStock;
    }

    public void setUnitsInStock(long unitsInStock) {
        this.unitsInStock = unitsInStock;
    }

    public long getUnitsInOrder() {
        return unitsInOrder;
    }

    public void setUnitsInOrder(long unitsInOrder) {
        this.unitsInOrder = unitsInOrder;
    }

    public boolean isDiscontinued() {
        return discontinued;
    }

    public void setDiscontinued(boolean discontinued) {
        this.discontinued = discontinued;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public MultipartFile getProductImage() {
        return productImage;
    }

    public void setProductImage(MultipartFile productImage) {
        this.productImage = productImage;
    }

    public LocalDateTime getActiveDate() {
        return activeDate;
    }

    public void setActiveDate(LocalDateTime activeDate) {
        this.activeDate = activeDate;
    }

    public LocalDateTime getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(LocalDateTime createdDate) {
        this.createdDate = createdDate;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", unitPrice=" + unitPrice +
                '}';
    }
}
