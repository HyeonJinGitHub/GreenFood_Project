package net.developia.greenfood.service;

import org.springframework.web.multipart.MultipartFile;

public interface AwsService {
	 public String s3FileUpload(MultipartFile file, String id) throws Exception;

	 public String s3FileUploadThumbnail(MultipartFile mf, String id, String recipe_no) throws Exception;
}
