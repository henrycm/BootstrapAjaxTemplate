package com.jhcm.audit.view;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.jhcm.audit.backend.model.User;
import com.jhcm.audit.backend.service.UserService;

@RestController
public class UserController {

	@Resource
	UserService uservice;

	@RequestMapping(value = "/api/user/list", method = RequestMethod.GET)
	public List<User> getCurrent() {
		return uservice.list();
	}

	@RequestMapping(value = "/api/user/save", method = RequestMethod.POST)
	public User saveUser(@RequestBody @Valid final User user) {
		return uservice.save(user);
	}

}
