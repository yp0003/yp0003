package com.yfann.web.common;

import java.util.UUID;

public class UUIDCreate {
	public static String getUUID() {
		return UUID.randomUUID().toString().replace("-", "");
	}
}
