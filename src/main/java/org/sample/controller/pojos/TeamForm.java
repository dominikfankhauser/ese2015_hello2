package org.sample.controller.pojos;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

public class TeamForm {

	 private Long id;
	 
	 @NotNull
	 @Pattern(regexp = "^(?=\\s*\\S).*$", 
	    message = "Please enter a name!")
	 private String name;
	 
	 public String getName() {
		 return name;
	 }

	 public void setName(String name) {
		 this.name = name;
	 }
	    
	 public Long getId() {
		 return id;
	 }

	 public void setId(Long id) {
		 this.id = id;
	 }
}
