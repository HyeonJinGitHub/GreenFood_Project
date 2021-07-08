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

	private AmazonS3 amazonS3; // �씤�뒪�꽩�뒪瑜� 珥덇린�솕�븳�떎.

	public AwsServiceImpl(@Value("${cloud.aws.s3.bucket}") String BUCKET_NAME,
			@Value("${cloud.aws.credentials.accessKey}") String ACCESS_KEY,
			@Value("${cloud.aws.credentials.secretKey}") String SECRET_KEY,
			@Value("${cloud.aws.s3.bucket.url}") String BUCKET_URL) { // Constructor
		
		this.BUCKET_NAME = BUCKET_NAME;
		this.ACCESS_KEY = ACCESS_KEY;
		this.SECRET_KEY = SECRET_KEY;
		this.BUCKET_URL = BUCKET_URL;
	
		// �씤利� 媛앹껜瑜� �깮�꽦�븳�떎.
		AWSCredentials awsCredentials = new BasicAWSCredentials(ACCESS_KEY, SECRET_KEY);

		// �씤�뒪�꽩�뒪�뿉 踰꾪궥�쓽 �젙蹂대�쇰뱾 �꽕�젙�븳�떎.
		// Region �쓽 寃쎌슦 踰꾪궥�쓽 url �뿉�꽌 �솗�씤 �븷 �닔 �엳�떎.
		// ex)
		// https://s3.console.aws.amazon.com/s3/buckets/static.preeplus.com/?region=ap-northeast-2&tab=overview
		amazonS3 = AmazonS3ClientBuilder.standard().withRegion(Regions.US_EAST_2)
				.withCredentials(new AWSStaticCredentialsProvider(awsCredentials)).build();
	}

	@Override
	public String s3FileUpload(MultipartFile mf, String id) throws Exception {
		File file = new File(mf.getOriginalFilename());
		mf.transferTo(file);
		// �뙆�씪 �뾽濡쒕뱶瑜� �쐞�븳 request 媛앹껜瑜� �깮�꽦 �븯���떎.
		PutObjectRequest putObjectRequest =
				// request 媛앹껜 �븞�뿉 BUCKET_NAME + "�깮�꽦 �맆 �뤃�뜑 �씠由�", �뙆�씪 �썝蹂몄씠由�, File 諛붿씠�꼫由� �뜲�씠�꽣 瑜� �꽕�젙�븯���떎.�뀖
				new PutObjectRequest(BUCKET_NAME + "/" + id, file.getName(), file)
						.withCannedAcl(CannedAccessControlList.PublicRead);
		// �떎�젣濡� �뾽濡쒕뱶 �븷 �븸�뀡�씠�떎.
		amazonS3.putObject(putObjectRequest);
		return BUCKET_URL + "/" + id + "/" + file.getName();
	}
	
	@Override
	public String s3FileUploadThumbnail(MultipartFile mf, String id, String recipe_no) throws Exception {
		File file = new File(mf.getOriginalFilename());
		mf.transferTo(file);
		// �뙆�씪 �뾽濡쒕뱶瑜� �쐞�븳 request 媛앹껜瑜� �깮�꽦 �븯���떎.
		PutObjectRequest putObjectRequest =
				// request 媛앹껜 �븞�뿉 BUCKET_NAME + "�깮�꽦 �맆 �뤃�뜑 �씠由�", �뙆�씪 �썝蹂몄씠由�, File 諛붿씠�꼫由� �뜲�씠�꽣 瑜� �꽕�젙�븯���떎.�뀖
				new PutObjectRequest(BUCKET_NAME + "/" + id +"/" + recipe_no, file.getName(), file)
						.withCannedAcl(CannedAccessControlList.PublicRead);
		// �떎�젣濡� �뾽濡쒕뱶 �븷 �븸�뀡�씠�떎.
		amazonS3.putObject(putObjectRequest);
		return BUCKET_URL + "/" + id + "/" + recipe_no + "/" + file.getName();
	}


}
