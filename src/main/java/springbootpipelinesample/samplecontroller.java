package springbootpipelinesample;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class samplecontroller {

	@RequestMapping(value="status")
	private String check()
	{
		return "Application Running Successfully";
	}
}
