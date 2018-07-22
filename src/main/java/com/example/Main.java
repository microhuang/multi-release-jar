package com.example;

public class Main {
	public static void main(String[] args) {
		ProcessIdDescriptor pid = new ProcessIdProvider().getPid();

		System.out.println("PID: " + pid.getPid());
		System.out.println("Provider: " + pid.getProviderName());
	}
}
