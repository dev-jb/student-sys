package com.jenish.studentinfosystem.utils;

import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class ImageUtil {

	static String path = "D:/Java/stuffs/student_info_sys_image/";

	public static String writeImageToFile(CommonsMultipartFile file) {
		String imageUploadPath = path + file.getOriginalFilename();
		try {
			byte[] bytes = file.getBytes();
			BufferedOutputStream bout= new BufferedOutputStream(new FileOutputStream(imageUploadPath));
			bout.write(bytes);
			bout.flush();
			bout.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return imageUploadPath;
	}
}
