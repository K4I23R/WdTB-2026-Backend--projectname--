package pl.wsb.learningplatform.course.entity;

import jakarta.persistence.*;

@Embeddable
public class CoursePrize {
    @Column(nullable = false)
    private Float price;

    @Column(nullable = false, length = 5)
    private String currency;

    protected  CoursePrize() {
    }

    public CoursePrize(Float price, String currency) {
        this.price = price;
        this.currency = currency;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }
}
