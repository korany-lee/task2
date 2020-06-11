	package Model.DTO;

	import java.sql.Timestamp;

	public class ReservationDTO {

		String userId;
		String userName;
		String resDate;
		String resTime;
		Integer resNum;
		String userPh;
		Integer resSuc;
		String aniNum;
		String aniName;
		String aniImage;
		
		
		public String getAniNum() {
			return aniNum;
		}
		public void setAniNum(String aniNum) {
			this.aniNum = aniNum;
		}
		public String getAniName() {
			return aniName;
		}
		public void setAniName(String aniName) {
			this.aniName = aniName;
		}
		public String getAniImage() {
			return aniImage;
		}
		public void setAniImage(String aniImage) {
			this.aniImage = aniImage;
		}
		public String getUserId() {
			return userId;
		}
		public void setUserId(String userId) {
			this.userId = userId;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getResDate() {
			return resDate;
		}
		public void setResDate(String resDate) {
			this.resDate = resDate;
		}
		public String getResTime() {
			return resTime;
		}
		public void setResTime(String resTime) {
			this.resTime = resTime;
		}
		public Integer getResNum() {
			return resNum;
		}
		public void setResNum(Integer resNum) {
			this.resNum = resNum;
		}
		public String getUserPh() {
			return userPh;
		}
		public void setUserPh(String userPh) {
			this.userPh = userPh;
		}
		public Integer getResSuc() {
			return resSuc;
		}
		public void setResSuc(Integer resSuc) {
			this.resSuc = resSuc;
		}
		
	}


