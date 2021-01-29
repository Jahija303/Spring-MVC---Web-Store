package com.packt.webstore.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.packt.webstore.dao.ProductDAO;
import com.packt.webstore.domain.Product;

@Controller
public class HomeController {

	@Autowired
	private ProductDAO productService;
	
  @RequestMapping("/")
  public String welcome(Model model) {
    model.addAttribute("greeting", "MobiShop");
    model.addAttribute("tagline", "Your true companion");
    model.addAttribute("contact","062-699-565");
    model.addAttribute("email","mobishop.ze@info.ba");
    
    return "welcome";
  }
  
  @RequestMapping("/welcome/greeting")
  public String greeting() {
   return "welcome";
  }
  
  @RequestMapping("/adminProducts")
  public String list(Model model) {
		model.addAttribute("products", productService.getAllProducts());
		return "adminProducts";
	}
  
  //--------------------------------------ADD
  
  @RequestMapping(value = "/adminProducts/add", method = RequestMethod.GET)
	public String getAddNewProductForm(Model model) {
		Product newProduct = new Product();
		model.addAttribute("newProduct", newProduct);
		return "addProduct";
	}

	@RequestMapping(value = "/adminProducts/add", method = RequestMethod.POST)
	public String processAddNewProductForm(@ModelAttribute("newProduct") Product newProduct, BindingResult result,
			HttpServletRequest request) {

		String[] suppressedFields = result.getSuppressedFields();
		if (suppressedFields.length > 0) {
			throw new RuntimeException("Attempting to bind disallowed fields: "
					+ StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}

		productService.save(newProduct);
		return "redirect:/adminProducts";
	}
	
	//---------------------------------------------UPDATE
	
	@RequestMapping(value = "/adminProducts/updateProduct", method = RequestMethod.GET)
	public String getUpdateNewProductForm(@RequestParam("id") String productId, Model model) {
		Product newProduct = productService.getProductById(productId);
		model.addAttribute("newProduct", newProduct);
		return "updateProduct";
	}

	@RequestMapping(value = "/adminProducts/updateProduct", method = RequestMethod.POST)
	public String processUpdateNewProductForm(@ModelAttribute("newProduct") Product newProduct) {		

		productService.update(newProduct);
		System.out.println(newProduct);
		
		return "redirect:/adminProducts";
	}
	
	//------------------------------------------------------DELETE
	
	@RequestMapping(value = "/adminProducts/deleteProduct", method = RequestMethod.GET)
	public String getDeleteNewProductForm(@RequestParam("id") String productId) {
		productService.delete(productId);
		return "redirect:/adminProducts";
	}

} 
