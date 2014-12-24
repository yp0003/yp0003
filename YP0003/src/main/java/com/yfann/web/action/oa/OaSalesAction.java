package com.yfann.web.action.oa;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yfann.web.action.CommonAction;
import com.yfann.web.common.OaApplicationValue;
import com.yfann.web.common.UUIDCreate;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.pojo.OaSales;
import com.yfann.web.pojo.OaSalesPic;
import com.yfann.web.pojo.User;
import com.yfann.web.service.OaSalesService;
import com.yfann.web.service.SystemService;
import com.yfann.web.vo.PageInfo;

/**
 * OA系统功能
 * 
 * @author Simon
 *
 */
public class OaSalesAction extends CommonAction {
	private static final long serialVersionUID = -4434093708933939827L;

	/** 销售列表 */
	private List<OaSales> oaSaleslist;
	/** 销售图片列表 */
	private List<OaSalesPic> oaSalesPicList;

	@Autowired
	private SystemService systemService;
	@Autowired
	private OaSalesService oaSalesService;

	/** 分页 */
	private PageInfo pageInfo;
	private OaSales oaSales;
	/** Struts2下载(内存数据下载) */
	public ByteArrayInputStream byteArrayInputStream;
	// 上传图片
	private File pic;
	// 上传图片文件类型
	private String picContentType;
	// 上传图片文件名称
	private String picFileName;
	// 上传图片id
	private String picid;

	/** 申请列表 */
	public String toOaSalesList() {
		OaEmployee emp = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if (emp == null) {
			return "forwardLogin";
		}
		pageInfo.setCount(oaSalesService.getOaSalesAllCountById(emp.getEmployeeId()));
		oaSaleslist = oaSalesService.getOaSalesAllById(emp.getEmployeeId(), pageInfo.getOffset(),
				pageInfo.getPageSize());
		//清楚无用的销售图片
		oaSalesService.delClearPic();
		return "oasaleslist";
	}

	public String toAdd() {
		oaSales = new OaSales();
		oaSales.setId(UUIDCreate.getUUID());
		return "oasalesadd";
	}

	/** 增加销售记录 */
	public String add() throws Exception {
		// 检查是否需要上传
		if (pic != null) {
			try {
				// 检查上传的是否过大
				if (pic.length() > (1024 * 1024)) {
					return "fail";
				}
				String extName = picFileName.substring(picFileName.lastIndexOf("."));
				// 检查上传的是否是图片
				if (!checkIsImage(extName)) {
					return "fail";
				}
				FileInputStream fis = new FileInputStream(pic);
				ByteArrayOutputStream bos = new ByteArrayOutputStream();
				byte[] b = new byte[1024];
				int n;
				while ((n = fis.read(b)) != -1) {
					bos.write(b, 0, n);
				}
				OaSalesPic oaSalesPic = new OaSalesPic();
				oaSalesPic.setSalesId(oaSales.getId());
				oaSalesPic.setPic(bos.toByteArray());
				oaSalesPic.setFlag(1);
				oaSalesService.savePic(oaSalesPic);
				fis.close();
				bos.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// 用户是否登录
		OaEmployee emp = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		if (emp == null) {
			return "forwardLogin";
		}
		// 判断学员账户是否存在
		User user = systemService.findUserByUserId(oaSales.getUserId());
		if (user == null) {
			return "accountfail";
		}
		// 判断该销售码存在，且没有被别人使用
		boolean flag = oaSalesService.SalesCodeUsed(oaSales.getSalesCode());
		if (!flag) {
			return "codefail";
		}
		oaSales.setEmployeeId(emp.getEmployeeId());
		oaSales.setCreateTime(new Date());
		oaSales.setPrice(oaSalesService.getPriceBySalesCode(oaSales.getSalesCode()));
		oaSalesService.saveOaSales(oaSales);
		//把销售码和销售码图片关联
		String[] picIds = picid.split(",");
		OaSalesPic oaSalesPic = new OaSalesPic();
		oaSalesPic.setSalesId(oaSales.getId());
		for(String id:picIds){
			oaSalesPic.setId(id.trim());
			oaSalesService.updateOaSales(oaSalesService.getPicById(id.trim()));
		}
		return toOaSalesList();
	}

	/** 查看图片 */
	public String view() {
		String id = request.getParameter("id");
		oaSales = oaSalesService.getOaSalesById(id);
		oaSalesPicList = oaSalesService.getPicBySales(id);
		return "view";
	}

	/** 显示图片 */
	public String showImage() throws Exception {
		OaSalesPic pic = oaSalesService.getPicById(request.getParameter("id"));
		byteArrayInputStream = new ByteArrayInputStream(pic.getPic());
		return "showImage";
	}

	/** 上传图片 */
	public String upLoad() throws Exception {
		try {
			// 检查上传的是否过大
			if (pic.length() > (1024 * 1024)) {
				return "fail";
			}
			String extName = picFileName.substring(picFileName.lastIndexOf("."));
			// 检查上传的是否是图片
			if (!checkIsImage(extName)) {
				return "fail";
			}
			FileInputStream fis = new FileInputStream(pic);
			ByteArrayOutputStream bos = new ByteArrayOutputStream();
			byte[] b = new byte[1024];
			int n;
			while ((n = fis.read(b)) != -1) {
				bos.write(b, 0, n);
			}
			OaSalesPic oaSalesPic = new OaSalesPic();
			oaSalesPic.setSalesId(oaSales.getId());
			oaSalesPic.setPic(bos.toByteArray());
			oaSalesPic.setFlag(2);
			oaSalesService.savePic(oaSalesPic);
			fis.close();
			bos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		oaSalesPicList = oaSalesService.getPicBySales(oaSales.getId());
		return "oasalesadd";
	}

	// 检查是否是图片格式
	public static boolean checkIsImage(String imgStr) {
		boolean flag = false;
		if (imgStr != null) {
			if (imgStr.equalsIgnoreCase(".gif") || imgStr.equalsIgnoreCase(".jpg")
					|| imgStr.equalsIgnoreCase(".jpeg") || imgStr.equalsIgnoreCase(".png")) {
				flag = true;
			}
		}
		return flag;

	}

	/** 删除销售信息 */
	public String del() throws Exception {
		oaSalesService.delOaSales(request.getParameter("id"));
		return toOaSalesList();
	}

	public List<OaSales> getOaSaleslist() {
		return oaSaleslist;
	}

	public void setOaSaleslist(List<OaSales> oaSaleslist) {
		this.oaSaleslist = oaSaleslist;
	}

	public List<OaSalesPic> getOaSalesPicList() {
		return oaSalesPicList;
	}

	public void setOaSalesPicList(List<OaSalesPic> oaSalesPicList) {
		this.oaSalesPicList = oaSalesPicList;
	}

	public OaSales getOaSales() {
		return oaSales;
	}

	public void setOaSales(OaSales oaSales) {
		this.oaSales = oaSales;
	}

	public PageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public ByteArrayInputStream getByteArrayInputStream() {
		return byteArrayInputStream;
	}

	public void setByteArrayInputStream(ByteArrayInputStream byteArrayInputStream) {
		this.byteArrayInputStream = byteArrayInputStream;
	}

	public File getPic() {
		return pic;
	}

	public void setPic(File pic) {
		this.pic = pic;
	}

	public String getPicContentType() {
		return picContentType;
	}

	public void setPicContentType(String picContentType) {
		this.picContentType = picContentType;
	}

	public String getPicFileName() {
		return picFileName;
	}

	public void setPicFileName(String picFileName) {
		this.picFileName = picFileName;
	}

	public String getPicid() {
		return picid;
	}

	public void setPicid(String picid) {
		this.picid = picid;
	}

}
