<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ include file="header.jsp"%>
<!-- Contact Section -->
<section class="page-section" id="contact">
	<div class="container">
		<!-- Contact Section Form -->
		<div class="row">
			<div class="col-lg-8 mx-auto" style="margin-top: 20px">
				<!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
				<div class="control-group">
					<h5 style="color: red; font-weight: bold;">INFORMATION COURSE</h5>
				</div>
				<div class="control-group">
					<label>Name</label>
				</div>
				<div class="control-group">
					<div
						class="form-group floating-label-form-group controls mb-0 pb-2"
					>
						<%
							if (request.getAttribute("name") != null) {
						%><div><%=request.getAttribute("name")%></div>
						<%
							}
						%>
					</div>
				</div>
				<div class="control-group">
					<label>Age</label>
				</div>
				<div class="control-group">
					<div
						class="form-group floating-label-form-group controls mb-0 pb-2"
					>
						<%
							if (request.getAttribute("age") != null) {
						%><div><%=request.getAttribute("age")%></div>
						<%
							}
						%>
					</div>
				</div>
				<div class="control-group">
					<label>National</label>
				</div>
				<div class="control-group">
					<div
						class="form-group floating-label-form-group controls mb-0 pb-2"
					>
						<%
							if (request.getAttribute("national") != null) {
						%><div><%=request.getAttribute("national")%></div>
						<%
							}
						%>
					</div>
				</div>
				<div class="control-group">
					<label>Subject</label>
				</div>
				<div class="control-group">
					<div
						class="form-group floating-label-form-group controls mb-0 pb-2"
					>
						<%
							String[] subject = (String[]) request.getAttribute("subject");
							if (subject != null && subject.length > 0) {
								for (int i = 0; i < subject.length; i++) {
						%><div><%=subject[i]%></div>
						<%
							}
							}
						%>
					</div>
				</div>
				<div class="control-group">
					<label>Languages</label>
				</div>
				<div class="control-group">
					<div
						class="form-group floating-label-form-group controls mb-0 pb-2"
					>
						<%
							String[] languages = (String[]) request.getAttribute("languages");
							if (languages != null && languages.length > 0) {
								for (int i = 0; i < languages.length; i++) {
						%><div><%=languages[i]%></div>
						<%
							}
							}
						%>
					</div>
				</div>
				<div id="success"></div>
				<div class="form-group"></div>
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

.bg-secondary {
	background-color: #000 !important;
}

.copyright {
	background-color: #000 !important;
}

.footer {
	background-color: rgba(5, 42, 62, 1) !important;
}
</style>
</html>
