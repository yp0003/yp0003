package com.yfann.web.action.oa;

import java.io.File;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.action.CommonAction;
import com.yfann.web.pojo.Dic;
import com.yfann.web.pojo.Product;
import com.yfann.web.pojo.ProductKind;
import com.yfann.web.service.OaProductService;
import com.yfann.web.vo.PageInfo;

/**
 * OA系统功能
 * 
 */
public class OaProductAction extends CommonAction {
	private static final long serialVersionUID = 4950305054523300932L;

	/** 产品列表 */
	private List<Product> productList;
	/** 产品 */
	private Product product;

	private String onlineTime1;
	private String offlineTime1;
	
	/** 分页 */
	private PageInfo pageInfo;

	@Autowired
	private OaProductService oaProductService;


	//扫描件
	private File scan;	
	//扫描件文件类型
	private String scanContentType;
	private String scanFileName;
	
	private File[] images; //上传的文件
	private String[] imagesFileName; //文件名称
	private String[] imagesContentType; //文件类型
	
	private List<Dic> productStatusList;//课程状态字典列表
	private List<Dic> productLevelList;//课程难度字典列表
	
	private List<ProductKind> productKindList;
	/**
	 * 判断上传扫描件的类型
	 * @return
	 */
	private boolean ifScanContentType(File file,String fileType,boolean isNull) {//isNull是否可以为空
		if(file == null && !isNull){//如果文件为空但是文件不能为空
			addActionMessage("请选择"+fileType);
			return false;
		}else if(file == null && isNull){
			return true;
		}
		if (file!=null &&("image/png".equals(scanContentType)
				|| "image/gif".equals(scanContentType)
				|| "image/jpg".equals(scanContentType)
				|| "image/jpeg".equals(scanContentType)
				|| "image/bmp".equals(scanContentType))) {
				return true;
		}
		addActionMessage(fileType+"上传非图片文件");
		return false;
	}
	
	/**
	 * 保存课程信息
	 * @return
	 */
	public String saveProductInfo() {
		if (ifScanContentType(scan,"产品缩略图",true)) {
			try{
				oaProductService.saveProduct(product, scan,images);
				addActionMessage("操作成功！");
			}catch(Exception e){
				addActionError("操作失败");
				e.printStackTrace();
			}
		}
		return forwardProductList();
	}
	public String forwardProductList() {
		productStatusList = oaProductService.selectProductStatusDicList();
		if(null==product)
			product = new Product();
		productList = oaProductService.selectProductList(product,pageInfo);
		return "forwardProductList";
	}

	public String forwardAddProductInfo() {
		productLevelList = oaProductService.selectProductLevelDicList();
		productKindList = oaProductService.selectProductKindList();
		product =new Product();
		return "productInfo";
	}



	public String forwardEditProduct() throws Exception {
		productLevelList = oaProductService.selectProductLevelDicList();
		productKindList = oaProductService.selectProductKindList();
		product = oaProductService.getProductById(product.getId());
		return "productInfo";
	}

	public String delProduct(){
		try{
			oaProductService.deleteProductById(product.getId());
			addActionMessage("操作成功");
		}catch(Exception e){
			addActionError("操作失败");
		}
		return forwardProductList();
	}

	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getOnlineTime1() {
		return onlineTime1;
	}

	public void setOnlineTime1(String onlineTime1) {
		this.onlineTime1 = onlineTime1;
	}

	public String getOfflineTime1() {
		return offlineTime1;
	}

	public void setOfflineTime1(String offlineTime1) {
		this.offlineTime1 = offlineTime1;
	}

	public PageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public File getScan() {
		return scan;
	}

	public void setScan(File scan) {
		this.scan = scan;
	}

	public String getScanContentType() {
		return scanContentType;
	}

	public void setScanContentType(String scanContentType) {
		this.scanContentType = scanContentType;
	}

	public String getScanFileName() {
		return scanFileName;
	}

	public void setScanFileName(String scanFileName) {
		this.scanFileName = scanFileName;
	}

	public File[] getImages() {
		return images;
	}

	public void setImages(File[] images) {
		this.images = images;
	}

	public String[] getImagesFileName() {
		return imagesFileName;
	}

	public void setImagesFileName(String[] imagesFileName) {
		this.imagesFileName = imagesFileName;
	}

	public String[] getImagesContentType() {
		return imagesContentType;
	}

	public void setImagesContentType(String[] imagesContentType) {
		this.imagesContentType = imagesContentType;
	}

	public List<Dic> getProductStatusList() {
		return productStatusList;
	}

	public void setProductStatusList(List<Dic> productStatusList) {
		this.productStatusList = productStatusList;
	}

	public List<Dic> getProductLevelList() {
		return productLevelList;
	}

	public void setProductLevelList(List<Dic> productLevelList) {
		this.productLevelList = productLevelList;
	}

	public List<ProductKind> getProductKindList() {
		return productKindList;
	}

	public void setProductKindList(List<ProductKind> productKindList) {
		this.productKindList = productKindList;
	}

	
}
