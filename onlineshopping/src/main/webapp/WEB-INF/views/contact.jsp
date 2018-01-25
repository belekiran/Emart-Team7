<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">

	<div class="row">

		<div class="main-container no-sidebar">
			<div class="container">

				<c:if test="${not empty message}">

					<div class="alert alert-info">
						<h3 class="text-center">${message}</h3>
					</div>

				</c:if>


				<div class="form-contact">
					<div class="row">
						<div class="col-sm-8">
							<h3 class="form-title margin-bottom-10">Contact Us</h3>
							<div id="message-box-conact"></div>

							<sf:form method="POST" modelAttribute="contactForm"
								class="form-horizontal" id="contactfrm">

								<input type="hidden" name="_frontendCSRF"
									value="d1BhUFN2V0cwKCc3IhkgChM0DiI9JAg3MX05ACtHPT4WPCwzHxoxMQ==">


								<div class="row">
									<div class="col-sm-4 contact_page_form">
										<div class="form-group field-tqcontactform-name required">

											<sf:input type="text" path="name" class="form-control"
												placeholder="Name*" />
											<sf:errors path="name" cssClass="help-block" element="em" />
										</div>
										<div class="form-group field-tqcontactform-email required">

											<sf:input type="text" path="email" class="form-control"
												placeholder="Email*" />
											<sf:errors path="email" cssClass="help-block" element="em" />
										</div>
										<div class="form-group field-tqcontactform-phone required">

											<sf:input type="text" path="phone" class="form-control"
												placeholder="Mobile*" maxlength="10" />
											<sf:errors path="phone" cssClass="help-block" element="em" />

										</div>
									</div>
									<div class="col-sm-8">

										<div class="form-group field-tqcontactform-comments required">

											<sf:textarea path="comments" class="form-control" rows="7"
												aria-required="true" placeholder="Comments*" />

											<sf:errors path="comments" cssClass="help-block" element="em" />
										</div>
										<button type="submit" class="button pull-right primary"
											name="contact-button">Send message</button>
									</div>
								</div>
								<!-- 	</form> -->
							</sf:form>
						</div>
						<div class="col-sm-4 address_post">
							<h3 class="form-title margin-bottom-10">Address</h3>
							<p>Authorised Training Centre of C-DAC ACTS 5th Floor,
								Vidyanidhi Education Complex, Vidyanidhi Road, Juhu Scheme
								Andheri (W), Mumbai 400 049 India</p>

							<p>
								<span><b>Phone number</b></span><br> (91) (22) 26255629 /
								26705498 <br> 9029435311
							</p>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>


</div>