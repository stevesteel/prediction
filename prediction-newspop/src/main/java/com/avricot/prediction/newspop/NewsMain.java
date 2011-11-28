package com.avricot.prediction.newspop;

import java.io.IOException;

import org.springframework.beans.BeansException;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.avricot.prediction.context.ApplicationContextHolder;

public class NewsMain {
	public static void main(String[] args) {
		new ClassPathXmlApplicationContext(new String[] { "classpath:context/application-context.xml" });
			try {
				ApplicationContextHolder.getApplicationContext().getBean(NewsPopularity.class).run();
			} catch (BeansException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
}
