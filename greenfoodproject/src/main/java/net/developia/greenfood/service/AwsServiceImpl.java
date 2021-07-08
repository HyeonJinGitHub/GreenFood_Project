package net.developia.greenfood.service;

import java.io.File;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.PutObjectRequest;

@Service
public class AwsServiceImpl implements AwsService {

	private String BUCKET_NAME;
	private String ACCESS_KEY;
	private String SECRET_KEY;
	private String BUCKET_URL;

	private AmazonS3 amazonS3; // 인스턴스를 초기화한다.

	public AwsServiceImpl(@Value("${cloud.aws.s3.bucket}") String BUCKET_NAME,
			@Value("${cloud.aws.credentials.accessKey}") String ACCESS_KEY,
			@Value("${cloud.aws.credentials.secretKey}") String SECRET_KEY,
			@Value("${cloud.aws.s3.bucket.url}") String BUCKET_URL) { // Constructor
		
		this.BUCKET_NAME = BUCKET_NAME;
		this.ACCESS_KEY = ACCESS_KEY;
		this.SECRET_KEY = SECRET_KEY;
		this.BUCKET_URL = BUCKET_URL;
	
		// 인증 객체를 생성한다.
		AWSCredentials awsCredentials = new BasicAWSCredentials(ACCESS_KEY, SECRET_KEY);

		// 인스턴스에 버킷의 정보를들 설정한다.
		// Region 의 경우 버킷의 url 에서 확인 할 수 있다.
		// ex)
		// https://s3.console.aws.amazon.com/s3/buckets/static.preeplus.com/?region=ap-northeast-2&tab=overview
		amazonS3 = AmazonS3ClientBuilder.standard().withRegion(Regions.US_EAST_2)
				.withCredentials(new AWSStaticCredentialsProvider(awsCredentials)).build();
	}

	@Override
	public String s3FileUpload(MultipartFile mf, String id) throws Exception {
		File file = new File(mf.getOriginalFilename());
		mf.transferTo(file);
		// 파일 업로드를 위한 request 객체를 생성 하였다.
		PutObjectRequest putObjectRequest =
				// request 객체 안에 BUCKET_NAME + "생성 될 폴더 이름", 파일 원본이름, File 바이너리 데이터 를 설정하였다.ㅏ
				new PutObjectRequest(BUCKET_NAME + "/" + id, file.getName(), file)
						.withCannedAcl(CannedAccessControlList.PublicRead);
		// 실제로 업로드 할 액션이다.
		amazonS3.putObject(putObjectRequest);
		return BUCKET_URL + "/" + id + "/" + file.getName();
	}
	
	@Override
	public String s3VideoUpload(File file, String id) throws Exception {
//		File file = new File(mf.getOriginalFilename());
//		mf.transferTo(file);
		// 파일 업로드를 위한 request 객체를 생성 하였다.
		PutObjectRequest putObjectRequest =
				// request 객체 안에 BUCKET_NAME + "생성 될 폴더 이름", 파일 원본이름, File 바이너리 데이터 를 설정하였다.ㅏ
				new PutObjectRequest(BUCKET_NAME + "/" + id, file.getName(), file)
						.withCannedAcl(CannedAccessControlList.PublicRead);
		// 실제로 업로드 할 액션이다.
		amazonS3.putObject(putObjectRequest);
		return BUCKET_URL + "/" + id + "/" + file.getName();
	}

}
