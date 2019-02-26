package com.tenjava.springmvc.reference;
//package com.tenjava.springmvc.model;
//
//import java.io.Serializable;
//import java.util.Date;
//import java.util.HashSet;
//import java.util.Set;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.FetchType;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.JoinTable;
//import javax.persistence.ManyToMany;
//import javax.persistence.Table;
//import javax.persistence.Temporal;
//import javax.persistence.TemporalType;
//import javax.validation.constraints.NotNull;
//import javax.validation.constraints.Past;
//
//import org.hibernate.validator.constraints.Email;
//import org.hibernate.validator.constraints.Length;
//import org.hibernate.validator.constraints.NotEmpty;
//import org.hibernate.validator.constraints.Range;
//import org.springframework.format.annotation.DateTimeFormat;
//
///**
// * A model of all attributes of a user, except role, which is covered by a {@link UserProfile}.
// */
//@Entity //Makes this a model class
//@Table(name="APP_USER") //TODO comment
//public class User implements Serializable {
//
//	private static final long serialVersionUID = 1L;
//
//	/**
//	 * ID for a user, which is auto-generated
//	 */
//	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
//	private Integer id;
//
//	/**
//	 * SSO ID: must be unique, can't be null, has to be between 3 and 20 characters long
//	 */
//	@Length(min=3, max=20)
//	@Column(name="SSO_ID", unique=true, nullable=false)
//	private String ssoId;
//	
//	/**
//	 * 
//	 */
//	@Length(min=8)
//	@Column(name="PASSWORD", nullable=false)
//	private String password;
//	
//	/**
//	 * 
//	 */
//	@Length(min=1, max=20)
//	@Column(name="FIRST_NAME", nullable=false)
//	private String firstName;
//
//	/**
//	 * 
//	 */
//	@Length(min=1, max=20)
//	@Column(name="LAST_NAME", nullable=false)
//	private String lastName;
//	
//	/**
//	 * 
//	 */
//	@Length(min=5, max=30)
//	@Email
//	@Column(name="EMAIL", nullable=false)
//	private String email;
//	
//	/**
//	 * 
//	 */
//	@NotEmpty
//	@Column(name="IP", nullable=false)
//	private String ip;
//	
//	/**
//	 * 
//	 */
//	@Length(min=1, max=30)
//	@Column(name="DEPARTMENT", nullable=false)
//	private String department;
//	
//	/**
//	 * 
//	 */
//	@Length(min=1, max=30)
//	@Column(name="POSITION", nullable=false)
//	private String position;
//	
//	/**
//	 * 
//	 */
//	@NotNull
//	@Range(min=100000000, max=999999999)
//	@Column(name="SIN", nullable=false)
//	private Long sin;
//	
//	/**
//	 * 
//	 */
//	@NotNull
//	@Range(min=1000000000L, max=999999999999L)
//	@Column(name="PHONENUMBER", nullable=false)
//	private Long phoneNumber;
//	
//	/**
//	 * 
//	 */
//	@NotNull
//	@Range(min=0, max=999999999)
//	@Column(name="SALARY", nullable=false)
//	private Long salary;
//
//	/**
//	 * 
//	 * 
//	 */
//	@NotNull
//	@Temporal(TemporalType.DATE)
//	@DateTimeFormat(pattern = "yyyy/MM/dd")
//	@Past
//	@Column(name="HIREDATE", nullable=false)
//	private Date hireDate;
//
//	/**
//	 * 
//	 */
//	@NotEmpty
//	@ManyToMany(fetch = FetchType.LAZY)
//	@JoinTable(name = "APP_USER_USER_PROFILE", 
//             joinColumns = { @JoinColumn(name = "USER_ID") }, 
//             inverseJoinColumns = { @JoinColumn(name = "USER_PROFILE_ID") })
//	private Set<UserProfile> userProfiles = new HashSet<UserProfile>();
//
//	public Integer getId() {
//		return id;
//	}
//
//	public void setId(Integer id) {
//		this.id = id;
//	}
//
//	public String getSsoId() {
//		return ssoId;
//	}
//
//	public void setSsoId(String ssoId) {
//		this.ssoId = ssoId;
//	}
//
//	public String getPassword() {
//		return password;
//	}
//
//	public void setPassword(String password) {
//		this.password = password;
//	}
//
//	public String getFirstName() {
//		return firstName;
//	}
//
//	public void setFirstName(String firstName) {
//		this.firstName = firstName;
//	}
//
//	public String getLastName() {
//		return lastName;
//	}
//
//	public void setLastName(String lastName) {
//		this.lastName = lastName;
//	}
//
//	public String getEmail() {
//		return email;
//	}
//
//	public void setEmail(String email) {
//		this.email = email;
//	}
//	
//	public String getIp() {
//		return ip;
//	}
//	
//	public void setIp(String ip) {
//		this.ip = ip;
//	}
//	
//
//	public String getDepartment() {
//		return department;
//	}
//
//	public void setDepartment(String department) {
//		this.department = department;
//	}
//
//	public String getPosition() {
//		return position;
//	}
//
//	public void setPosition(String position) {
//		this.position = position;
//	}
//
//	public Long getSin() {
//		return sin;
//	}
//
//	public void setSin(Long sin) {
//		this.sin = sin;
//	}
//
//	public Long getPhoneNumber() {
//		return phoneNumber;
//	}
//
//	public void setPhoneNumber(Long phoneNumber) {
//		this.phoneNumber = phoneNumber;
//	}
//
//	public Long getSalary() {
//		return salary;
//	}
//
//	public void setSalary(Long salary) {
//		this.salary = salary;
//	}
//
//	public Date getHireDate() {
//		return hireDate;
//	}
//
//	public void setHireDate(Date hireDate) {
//		this.hireDate = hireDate;
//	}
//
//	public Set<UserProfile> getUserProfiles() {
//		return userProfiles;
//	}
//
//	public void setUserProfiles(Set<UserProfile> userProfiles) {
//		this.userProfiles = userProfiles;
//	}
//
//	/**
//	 * A formula to generate a unique hashcode.
//	 */
//	@Override
//	public int hashCode() {
//		final int prime = 31;
//		int result = 1;
//		result = prime * result + ((id == null) ? 0 : id.hashCode());
//		result = prime * result + ((ssoId == null) ? 0 : ssoId.hashCode());
//		return result;
//	}
//
//	/**
//	 * Checks for equality between User objects.
//	 */
//	@Override
//	public boolean equals(Object obj) {
//		if (this == obj)
//			return true;
//		if (obj == null)
//			return false;
//		if (!(obj instanceof User))
//			return false;
//		User other = (User) obj;
//		if (id == null) {
//			if (other.id != null)
//				return false;
//		} else if (!id.equals(other.id))
//			return false;
//		if (ssoId == null) {
//			if (other.ssoId != null)
//				return false;
//		} else if (!ssoId.equals(other.ssoId))
//			return false;
//		return true;
//	}
//
//	@Override
//	public String toString() {
//		return "User [id=" + id + ", ssoId=" + ssoId + ", password=" + password
//				+ ", firstName=" + firstName + ", lastName=" + lastName
//				+ ", email=" + email + ", ip=" + ip + "]"; //TODO
//	}
//
//
//	
//}
