package com.packt.webstore.dao;
import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;
import com.packt.webstore.domain.Product;

public class ProductDAO {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}
	
	public int save(Product p){    
	    String sql="insert into proizvodi (`name`, `unitPrice`, `manufacturer`, `category`, `unitsInStock`, `condition`, `description`, `productImage`)"
	    		+ " values('"+p.getName()+"','"+p.getUnitPrice()+"','"+p.getManufacturer()+"','"+p.getCategory()+"','"+p.getUnitsInStock()+"','"+p.getCondition()+"','"+p.getDescription()+"','"+p.getProductImage()+"');";    
	    return template.update(sql);    
	} 
	
	public int update(Product p){  
	    String sql="UPDATE proizvodi SET `name` = '"+p.getName()+"', `unitPrice` = '"+p.getUnitPrice()+"', `manufacturer` = '"+p.getManufacturer()+"', `category` = '"+p.getCategory()+"', `unitsInStock` = '"+p.getUnitsInStock()+"', `condition` = '"+p.getCondition()+"', `description` = '"+p.getDescription()+"', `productImage` = '"+p.getProductImage()+"' WHERE (`productId` = '"+p.getProductId()+"');";    
	    return template.update(sql);    
	}
	
	public int delete(String id){    
	    String sql="delete from proizvodi where productID='"+id+"'";    
	    return template.update(sql);    
	}
	
	public Product getProductById(String id){    
	    String sql="select * from proizvodi where productID=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Product>(Product.class));    
	}
	
	public List<Product> getProductsByCategory(String category){    
	    return template.query("select * from proizvodi where category='"+category+"'",new RowMapper<Product>(){    
	        public Product mapRow(ResultSet rs, int row) throws SQLException {    
	        	Product p=new Product();    
	        	p.setProductId(rs.getString(1));
	        	p.setName(rs.getString(2));
	        	p.setUnitPrice(rs.getBigDecimal(3));
	        	p.setManufacturer(rs.getString(4));
	        	p.setCategory(rs.getString(5));
	        	p.setUnitsInStock(rs.getInt(6));
	        	p.setCondition(rs.getString(7));
	        	p.setDescription(rs.getString(8));
	        	p.setProductImage(rs.getString(9));
	            return p;    
	        }    
	    });    
	}
	
	public List<Product> getAllProducts(){    
	    return template.query("select * from proizvodi",new RowMapper<Product>(){    
	        public Product mapRow(ResultSet rs, int row) throws SQLException {    
	        	Product p=new Product();    
	        	p.setProductId(rs.getString(1));
	        	p.setName(rs.getString(2));
	        	p.setUnitPrice(rs.getBigDecimal(3));
	        	p.setManufacturer(rs.getString(4));
	        	p.setCategory(rs.getString(5));
	        	p.setUnitsInStock(rs.getInt(6));
	        	p.setCondition(rs.getString(7));
	        	p.setDescription(rs.getString(8));
	        	p.setProductImage(rs.getString(9));
	            return p;    
	        }    
	    });    
	}  
}
