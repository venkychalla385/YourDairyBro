package com.twg.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.twg.springboot.entity.Entry;
import com.twg.springboot.entity.User;
import com.twg.springboot.service.EntryService;
import com.twg.springboot.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	
	
	@Autowired
	private UserService userService;
      public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	@Autowired
	private EntryService entryService;
	  public EntryService getEntryService() {
		return entryService;
	}
	public void setEntryService(EntryService entryService) {
		this.entryService = entryService;
	}
	  @GetMapping("/") 
	public String basic(Model model) {
		  return "basic";
	}
	  @GetMapping("/login")
      public String login(Model model) {
		  return "login";
	}
     
      
      @GetMapping("/register")
      public String register(Model model) {
		  return "register";
	}
      
      @PostMapping("/saving")
      public String reg(@ModelAttribute User user,Model model) {
    	   User user1= userService.saveUser(user);
    	   
    	   return "redirect:/login";
    	   
      }

      @PostMapping("/authenticate")
      public String auth(@ModelAttribute User user,Model model,HttpSession session) {
    	   
    	     
    	      if(user!=null ) {
    	    	  
    	    	  User newuser=userService.findByUsername(user.getUsername());
    	    	    
    	    	  if(newuser!=null) {
    	    	  if(newuser.getUsername().equals(user.getUsername())) {
    	    	   session.setAttribute("userid",newuser.getId());
    	    	  model.addAttribute("username", newuser.getUsername());
    	    	  return "home";
    	    	  }
    	      }
    	      }
    	   
    	   
    	   return "redirect:/login";
    	   
      }
      @RequestMapping("/addentry")
      public String add(Model model) {
    	  return "addform";
      }
      
      @PostMapping("/entryaddsol")
      public String entryee(@ModelAttribute Entry entry,Model model,HttpSession session) {
    	  Integer userid=(Integer)session.getAttribute("userid");
    	   entry.setUserid(userid);
    	   Entry e=entryService.saveEntry(entry);
    	  
    	   return "home";
       }
      @GetMapping("/seeall")
      public String getAll(Model model,HttpSession session) {
    	  Integer id=(Integer)session.getAttribute("userid");
    	   List<Entry> entries=entryService.findByUserid(id);
    	   model.addAttribute("entries", entries);
    	   return "seeallentries";
      }
      @GetMapping("/seeone")
      public String seeone(Model model,@RequestParam("id") int id) {
    	  Entry e= entryService.findById(id);
    	  model.addAttribute("entry", e);
    	  return "displayone";
      }
      @GetMapping("/update")
      public  String update(Model model,@RequestParam("id") int id) {
    	  model.addAttribute("userid", id);
    	  return "updateform";
      }
      @PostMapping("/updateform")
      public String updateform(@RequestParam("id") int id,@RequestParam("description") String description,Model model) {
    	  Entry e=entryService.findById(id);
    	  e.setDescription(description);
    	 Entry newe=entryService.saveEntry(e);
    	 return "home";
    	  
      }
      @GetMapping("/delete")
      public String delete(@RequestParam("id") int id) {
    	  Entry e=entryService.findById(id);
    	  entryService.deleteEntry(e);
    	  return "seeallentries";
      }
}
