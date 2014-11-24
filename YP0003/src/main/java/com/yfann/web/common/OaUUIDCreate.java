package com.yfann.web.common;

import java.util.UUID;

public class OaUUIDCreate {
	public static String getUUID() {
		return UUID.randomUUID().toString().replace("-", "");
	}
}
