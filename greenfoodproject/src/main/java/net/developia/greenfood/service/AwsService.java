package net.developia.greenfood.service;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

public interface AwsService {
	 public String s3FileUpload(MultipartFile file, String id) throws Exception;
	 public String s3FileUploadThumbnail(MultipartFile mf, String id, String recipe_no) throws Exception;
	 public String s3FileUploadStep(MultipartFile mf, String id, String recipe_no, String step_no) throws Exception;
}
