package com.yfann.web.action.oa;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.action.CommonAction;
import com.yfann.web.common.OaUUIDCreate;
import com.yfann.web.pojo.Product;
import com.yfann.web.service.OaProductService;
import com.yfann.web.vo.PageInfo;

/**
 * OA系统功能
 * 
 */
public class OaProductAction extends CommonAction {
	private static final long serialVersionUID = 4950305054523300932L;

	/** 产品列表 */
	public List<Product> productList;
	/** 产品 */
	public Product product;

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
	/**
	 * 判断上传扫描件的类型
	 * @return
	 */
	private boolean ifScanContentType() {
		if(scan == null){
			addActionMessage("请选择扫描件图片");
			return false;
		}
		if ("image/png".equals(scanContentType)
				|| "image/gif".equals(scanContentType)
				|| "image/jpg".equals(scanContentType)
				|| "image/jpeg".equals(scanContentType)
				|| "image/bmp".equals(scanContentType)) {
				return true;
		}
		addActionMessage("请不要上传非图片文件");
		return false;
	}
	
	/**
	 * 保存课程信息
	 * @return
	 */
	public String saveProductInfo() {
		if (ifScanContentType()) {
			try{
				oaProductService.saveProduct(product, scan);
				addActionMessage("操作成功！");
			}catch(Exception e){
				addActionError("操作失败");
			}
		}
		return toList();
	}
	public String toList() {
		productList = oaProductService.getAllProduct(0, Integer.MAX_VALUE);
		return "tolist";
	}

	public String toAdd() {
		return "add";
	}

//	public String add() throws Exception {
//		product.setId(OaUUIDCreate.getUUID());
//		product.setUpdateTime(new Date());
//		if (onlineTime1 != null && !"".equals(onlineTime1)) {
//			Date online1 = (new SimpleDateFormat("yyyy-MM-dd")).parse(onlineTime1);
//			product.setOnlineTime(online1);
//		}
//		if (offlineTime1 != null && !"".equals(offlineTime1)) {
//			Date offline1 = (new SimpleDateFormat("yyyy-MM-dd")).parse(offlineTime1);
//			product.setOfflineTime(offline1);
//		}
//		oaProductService.saveProduct(product);
//		return "action2action";
//	}

	public String toUpdate() {
		product = oaProductService.getProductById(request.getParameter("id"));
		if (product != null) {
			if (product.getOnlineTime() != null) {
				onlineTime1 = (new SimpleDateFormat("yyyy-MM-dd")).format(product.getOnlineTime());
			}
			if (product.getOfflineTime() != null) {
				offlineTime1 = (new SimpleDateFormat("yyyy-MM-dd")).format(product.getOfflineTime());
			}
		}
		return "update";
	}

	public String update() throws Exception {
		if (onlineTime1 != null && !"".equals(onlineTime1)) {
			Date online1 = (new SimpleDateFormat("yyyy-MM-dd")).parse(onlineTime1);
			product.setOnlineTime(online1);
		}
		if (offlineTime1 != null && !"".equals(offlineTime1)) {
			Date offline1 = (new SimpleDateFormat("yyyy-MM-dd")).parse(offlineTime1);
			product.setOfflineTime(offline1);
		}
		oaProductService.updateProduct(product);
		return "action2action";
	}

	public String del() throws Exception {
		oaProductService.deleteProductById(request.getParameter("id"));
		return "action2action";
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

	
}
