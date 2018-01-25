package net.team7.onlineshopping.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.team7.shoppingbackend.dao.ContactFormDAO;
import net.team7.shoppingbackend.dto.ContactForm;

@Controller
public class ContactFormController {

	@Autowired
	ContactFormDAO cd;

	@RequestMapping(value = "/contact")
	public ModelAndView manageContact(@RequestParam(name = "success", required = false) String success) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact");
		mv.addObject("userClickManageContact", true);

		ContactForm ncontactForm = new ContactForm();

		mv.addObject("contactForm", ncontactForm);

		if (success != null) {
			if (success.equals("contactfrm")) {
				mv.addObject("message", "Informtion submitted successfully!");
			}
		}

		return mv;
	}

	@RequestMapping(value = "/contact", method = RequestMethod.POST)
	public String managePostContact(@Valid @ModelAttribute("contactForm") ContactForm mcontactForm,
			BindingResult results, Model model, HttpServletRequest request) {

		if (results.hasErrors()) {
			model.addAttribute("message", "Validation fails for Information Submitted!");
			model.addAttribute("userClickManageContact", true);
			return "page";
		}

		if (mcontactForm != null) {
			cd.add(mcontactForm);
			System.out.println(mcontactForm);
		}

		return "redirect:/contact?success=contactfrm";

	}

}
