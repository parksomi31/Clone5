package kr.soft.study.product;

import org.springframework.ui.Model;

public interface ProductCommand {

	void execute(Model model);
}
