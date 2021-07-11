<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="faq.css" />
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container py-3">
    <div class="row">
        <div class="col-10 mx-auto">
    		<h1 class="text-center">Frequently Asked Questions </h1>
    		<H6> About Automotive Service
				The best way to protect the value of your vehicle and ensure that it functions well for years to come is to maintain it properly at regular intervals. However, knowing how to take care of a car can be a challenge for those who are unfamiliar with procedures. We have provided answers to frequently asked questions related to automotive service for this reason. By making this information readily accessible, our hope is to make maintenance more approachable for customers .</H6>
            <div class="accordion" id="faqExample">
                <div class="card">
                    <div class="card-header p-2" id="headingOne">
                        <h5 class="mb-0">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                              Q: When Should I Replace My Car Battery?
                            </button>
                          </h5>
                      <img src="">
                    </div>

                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#faqExample">
                        <div class="card-body">
                            <b>Answer:</b> The standard battery is projected to last three to five years, but variables like hot and cold weather can influence its longevity, so it is best to keep an eye out for signs your battery power is declining. If your headlights and dashboard lights are starting to dim or if your vehicle has difficulty starting, these are clues that your vehicle may be due for a battery replacement.
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header p-2" id="headingTwo">
                        <h5 class="mb-0">
                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                          Q: When Should I Get a Tire Rotation?
                        </button>
                      </h5>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#faqExample">
                        <div class="card-body">
                            As the main point of contact with the pavement, tires are subject to the most wear and tear. This is especially true if you utilize your vehicle for off-roading or have a two-wheel drive system which puts most of the labor on a specific set of wheels. That being the case, having your tires rotated every six months or around 6,000 to 8,000 miles is a good rule to uphold. Doing so will ensure your tires wear evenly.
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header p-2" id="headingThree">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                              Q. How Much Air Pressure Should I Put into My Tires?
                            </button>
                          </h5>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#faqExample">
                        <div class="card-body">
                           The amount of pressure a tire requires depends on its type and the vehicle. You can find out the optimum air pressure either printed on the door jamb, the side-wall of the tires, or in your owner's manual. Too much pressure can make it difficult for you to maneuver your vehicle while too little pressure can result in a blow-out. You can always speak with a product expert to determine what pressure levels are most appropriate.
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header p-2" id="headingThree">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                              Q. For More Answers to Service Questions, Please Contact Us .
                            </button>
                          </h5>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#faqExample">
                        <div class="card-body">
                          Ultimately, the purpose of servicing your vehicle is to protect not just your vehicle but you and your passengers. . Otherwise, you can consult with a technician at one of our service centers to receive detailed information and to get assistance with your regular maintenance.  
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>