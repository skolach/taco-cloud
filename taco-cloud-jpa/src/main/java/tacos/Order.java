package tacos;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;
//import javax.validation.constraints.Pattern;

//import javassist.SerialVersionUID;
import lombok.Data;

@Data
@Entity
@Table(name = "ORDER")
public class Order implements Serializable {
  
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id;

  @Column(name = "createdat")
  private Date createdAt;

  @Column(name = "deliveryname")
  @NotBlank(message="Name is required")
  private String deliveryName;  

  @Column(name = "deliverystreet")
  @NotBlank(message="Street is required")
  private String deliveryStreet;

  @Column(name = "deliverycity")
  @NotBlank(message="City is required")
  private String deliveryCity;

  @Column(name = "deliverystate")
  @NotBlank(message="State is required")
  private String deliveryState;

  @Column(name = "deliveryzip")
  @NotBlank(message="Zip code is required")
  private String deliveryZip;

  @Column(name = "ccnumber")
  //@CreditCardNumber(message="Not a valid credit card number")
  private String ccNumber;

  @Column(name = "ccexpiration")
  //@Pattern(regexp = "^(0[1-9]|1[0-2])([\\/])([1-9][0-9])$", message="Must be formatted MM/YY")
  private String ccExpiration;

  @Column(name = "cccvv")
  @Digits(integer=3, fraction=0, message="Invalid CVV")
  private String ccCvv;

  @OneToMany(targetEntity=Taco.class)
  private List<Taco> taco = new ArrayList<>();

  public void addDesign(Taco design) {
    this.taco.add(design);
  }

  @PrePersist
  void createdAt(){
    this.createdAt = new Date();
  }

}
