package net.developia.greenfood.service;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

public interface AwsService {
	 public String s3FileUpload(MultipartFile file, String id) throws Exception;

	 public String s3VideoUpload(File file, String id) throws Exception;
}
