<%@ include file="header.jsp" %>
<!-- Contact Section -->
	<section class="page-section" id="contact">
		<div class="container">
			
			<!-- Contact Section Form -->
			<div class="row">
				<div class="col-lg-8 mx-auto" style="margin-top: 20px">
					<!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
					<form name="form1" id="form1" action="CourseValidation" method="POST">
						<div class="control-group">
							<h5 style="color: red;font-weight: bold;">REGISTER COURSE</h5>
						</div>
						<div class="control-group">
							<label>Name</label>
						</div>
						<div class="control-group">
							<div
								class="form-group floating-label-form-group controls mb-0 pb-2"
							>
								<input class="form-control" id="name" type="text"
									name="name">
							</div>
						</div>
						<div class="control-group">
							<label>Age</label>
						</div>
						<div class="control-group">
							<div class="form-group floating-label-form-group controls mb-0 pb-2">
								<input class="form-control" id="age" type="text" name="age">								
							</div>
						</div>
						<div class="control-group">
							<label>National</label>
						</div>
						<div class="control-group">
							<div
								class="form-group floating-label-form-group controls mb-0 pb-2"
							>
								<select id="national" name="national">
									<option value="-1" selected="selected">Select</option>
									<option value="VietNam">Viet Nam</option>
									<option value="USA">USA</option>
									<option value="England">England</option>
									<option value="China">China</option>
									<option value="France">France</option>
								</select>
								
							</div>
						</div>
						<div class="control-group">
							<label>Course</label>
						</div>
						<div class="control-group">
							<div
								class="form-group floating-label-form-group controls mb-0 pb-2" style="margin-top: -30px"
							>
								<div class="row">
									<div class="col-xs-3 col-md-3 col-sm-3 col-lg-3">
										<div class="checkbox">
											<label><input type="checkbox" name="checkboxSubject"
												value="C#"
											>C#</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="checkboxSubject"
												value="Java"
											>Java</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="checkboxSubject"
												value="C++"
											>C++</label>
										</div>
									</div>
									<div class="col-xs-9 col-md-9 col-sm-9 col-lg-9">
										<div class="checkbox">
											<label><input type="checkbox" name="checkboxSubject"
												value="Python"
											>Python</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="checkboxSubject"
												value="Ruby on Rail"
											>Ruby on Rail</label>
										</div>
										
									</div>
								</div>
								
								<p class="help-block text-danger"></p>
								<div id="validSubject"></div>
							</div>
							
						</div>
						<div class="control-group">
							<label>Languages</label>
						</div>
						<div class="control-group">
							<div
								class="form-group controls mb-0 pb-2"
							>
								<div class="row">
									<div class="col-xs-3 col-md-3 col-sm-3 col-lg-3">
										<div class="checkbox">
											<label><input type="checkbox" name="checkboxLanguages"
												value="Viet Nam"
											>Viet Nam</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="checkboxLanguages"
												value="England"
											>England</label>
										</div>
									</div>
									<div class="col-xs-9 col-md-9 col-sm-9 col-lg-9">
										<div class="checkbox">
											<label><input type="checkbox" name="checkboxLanguages"
												value="France"
											>France</label>
										</div>
									</div>
								</div>
								<div id="validLanguage"></div>
							</div>						
						</div>		
						<div id="success"></div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-sm"
								id="sendMessageButton"
							>Submit</button>
							<button type="button" class="btn btn-danger btn-sm" onClick="javascript:window.location='welcomepage.jsp'">Cancel</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="footer.jsp"%>
</body>
<style>
.floating-label-form-group label {
	opacity: 1 !important;
}
.bg-secondary{
	background-color: #000 !important;
}
.copyright{
	background-color: #000 !important;
} 
.footer{
	background-color: rgba(5,42,62,1) !important;

}
</style>
<script>
$(document).ready(function(){
			$('#form1').submit(function(e) {
								var name = $('#name').val();
								var age = $('#age').val();
								var national = $('#national').val();
								
								var valid = true;
								$(".error").remove();
								if (name.length < 1) {
									$('#name').after('<span class="error" style="color:red">This field is required</span>');
									valid = false;
								}else {
									var regEx =  /^[A-Za-z\s]+$/;
									var validName = regEx.test(name);
									if (!validName) {
										$('#name').after('<span class="error" style="color:red">The name must be a characters and name Vietnamese without accents</span>');
										valid = false;
									}
								}
				
								age = parseInt(age, 10);
								if (isNaN(age) || age < 18 || age > 40)
								{ 
								  	$('#age').after('<span class="error" style="color:red">The age must be a number between 18 and 40</span>');
								  	return false;
								}
								if(national ==-1){
									$('#national').after('<div class="error" style="color:red">This field is required</div>');
									return false; 
								}
								if ($("input[type='checkbox'][name='checkboxSubject']:checked").length ==0){
									$('#validSubject').after('<div class="error" style="color:red">This field is required</div>');
									return false;     
								    }
								if ($("input[type='checkbox'][name='checkboxLanguages']:checked").length ==0){
									$('#validLanguage').after('<div class="error" style="color:red">This field is required</div>');
									return false;     
								    }
								return valid;
							});
		});
</script>
</html>
