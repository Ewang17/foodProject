package com.food.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.food.dao.FoodDao;
import com.food.model.*;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class FoodAction extends ActionSupport{
	
	 /*业务层对象*/
    @Resource FoodDao foodDao;
    
    
    private Food food;

	public Food getFood() {
		return food;
	}

	public void setFood(Food food) {
		this.food = food;
	}
	
	private List<Food> foodList;
	
	public List<Food> getFoodList() {
		return foodList;
	}

	public void setFoodList(List<Food> foodList) {
		this.foodList = foodList;
	}
	
	private String keyWords;
	
	public String getKeyWords() {
		return keyWords;
	}

	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}
	
	private Customer customer;
	
	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	
	
	/*添加Food*/
	public String addFood() throws Exception{
		
		 String path = ServletActionContext.getServletContext().getRealPath("/upload"); 
		 
         /*处理图片上传*/
    	 if(food.getFilepath()!= null) {
	 		InputStream is = new FileInputStream(food.getFilepath());
			File file = new File(path, food.getFilepath());
			OutputStream os = new FileOutputStream(file);
			byte[] b = new byte[1024];
			int bs = 0;
			while ((bs = is.read(b)) > 0) {
				os.write(b, 0, bs);
			}
			is.close();
			os.close();
		   
    	}
    	food.setFilepath("upload/" + food.getFilepath()); 
    	System.out.println(1);
    	System.out.println(food.getFilepath());
    	System.out.println(2);
		foodDao.AddFood(food);
		return "message";
		
	}
	
	/*显示所有Food*/
    public String showFood() {
        
        foodList = foodDao.QueryAllFood();
        return "show_view";
    }

    /*显示某一Food的详细信息*/
    public String showDetail() {
    	food = foodDao.GetFoodById(food.getFoodid());
        return "detail_view";
    }
    
    /*显示food的修改项*/
    public String showEdit() throws Exception {
    	food = foodDao.GetFoodById(food.getFoodid());
        return "edit_view";
    }

    /*编辑food*/
    public String editFood() throws Exception {
    	foodDao.UpdateFood(food);
        return "edit_message";
    }
    
    /*删除Food*/
    public String deleteFood() throws Exception {
    	foodDao.DeleteFood(food.getFoodid());
        return "delete_message";
    }
    
    /*查询Food*/
    public String queryFoods() throws Exception {
    	foodList = foodDao.QueryFoodInfo(keyWords);
        return "show_view";
    }




}
