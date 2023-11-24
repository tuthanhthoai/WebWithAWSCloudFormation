package com.webproject.service;

import java.nio.file.Path;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

public interface StorageService {

	void init();

	void delete(String storeFileName) throws Exception;

	Path load(String filename);

	Resource loadAsResource(String filename);

	void store(MultipartFile file, String storeFilename);

	String getStorageFilename(MultipartFile file, String id);

	void store(MultipartFile[] featuredImagesFile, String[] featuredImages);

}
