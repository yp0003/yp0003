package com.yfann.web.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.slf4j.Logger;
public class FileUtil {
	
	public static byte[] fileToPicData(File file,Logger logger){
		InputStream is = null;
		byte[] picData = new byte[(int) file.length()];
		try {
			is = new FileInputStream(file);
			is.read(picData);

		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally{
			try {
				if(is != null)
					is.close();
			} catch (IOException e) {
				logger.error(e.getMessage());
			}
		}
		return picData;
	}
	
}
