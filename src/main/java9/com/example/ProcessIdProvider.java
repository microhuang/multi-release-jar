package com.example;

import java.lang.ProcessHandle;

public class ProcessIdProvider {
	public ProcessIdDescriptor getPid() {
		long pid = ProcessHandle.current().pid();
		System.out.println("Java 9 execution");
		return new ProcessIdDescriptor(pid, "ProcessHandle");
	}

}
