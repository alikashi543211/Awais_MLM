@extends("layouts.tutor")
@section("title", "Add My Lesson")

@section('css')
    <style>
        .table td, .table th{
            border-top:  none;
        }
        .btn-primary {
            color: #fff;
            background-color: #5ab48b;
            border-color: #5ab48b;
        }
        .btn-primary:hover{
            color: #fff;
            background-color: #5ab48b;
            border-color: #5ab48b;
        }
        .btn-primary:not(:disabled):not(.disabled):active, .show>.btn-primary.dropdown-toggle {
            color: #fff;
            background-color: #5ab48b;
            border-color: #5ab48b;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">
@endsection

@section('content')
	<!--Tab / Active Tab-->
	<div class="tab active-tab" id="edit-profile">
		<div class="content">
			<h5 class="mb-3">Add sLesson</h5>
			<!-- Title Box -->
			<section class="student-profile-section p-4 bg-white">
				<div class="styled-form lesson-section">
				<form method="post" action="{{ route('tutor.lesson.save') }}" enctype="multipart/form-data" class="validate_my_form">
						@csrf
						<div class="row clearfix">

							<!-- Form Group -->
							<div class="form-group col-lg-12 col-md-12 col-sm-12">
								<label>Title*</label>
								<input type="text" name="title" class="@error('name') is-invalid @enderror valid-control">
								<span class="invalid-feedback">
			                        @error('title')
			                            <strong>{{ $message }}</strong>
			                        @enderror
                				</span>
							</div>

							<!-- Form Group -->
							<div class="form-group col-lg-12 col-md-12 col-sm-12">
								<label>Description*</label>
								<textarea name="description" id="" class="valid-control"></textarea>
								<span class="invalid-feedback">
			                        @error('description')
			                            <strong>{{ $message }}</strong>
			                        @enderror
                				</span>
							</div>
							
							<!-- Form Group -->
							<div class="form-group col-lg-6 col-md-12 col-sm-12">
								<label>Language Taught*</label>
								<select name="language" class="valid-control">
									<option value="">Choose</option>
									@foreach(language_dropdown() as $item)
			                            <option value="{{ $item }}">{{ $item }}</option>
			                        @endforeach
								</select>
								<span class="invalid-feedback">
			                        @error('language')
			                            <strong>{{ $message }}</strong>
			                        @enderror
                				</span>
							</div>

							<div class="form-group col-lg-3 col-md-12 col-sm-12">
								<label>Level From*</label>
								<select name="level_from" class="valid-control">
									<option value="">Choose</option>
									<option>Beginner</option>
									<option>Intermediate</option>
									<option>Expert</option>
								</select>
								<span class="invalid-feedback">
			                        @error('level_from')
			                            <strong>{{ $message }}</strong>
			                        @enderror
                				</span>
							</div>

							<div class="form-group col-lg-3 col-md-12 col-sm-12">
								<label>Level To*</label>
								<select name="level_to" class="valid-control">
									<option value="">Choose</option>
									<option>Beginner</option>
									<option>Intermediate</option>
									<option>Expert</option>
								</select>
								<span class="invalid-feedback">
			                        @error('level_to')
			                            <strong>{{ $message }}</strong>
			                        @enderror
                				</span>
							</div>

							<div class="form-group col-lg-6 col-md-12 col-sm-12">
								<label>Category*</label>
								<select name="category" class="valid-control">
									<option value="">Choose</option>
									<option>General</option>
									<option>Business</option>
									<option>Exam Preparation</option>
									<option>Kids</option>
									<option>Conversation practice</option>
								</select>

								<span class="invalid-feedback">
			                        @error('category')
			                            <strong>{{ $message }}</strong>
			                        @enderror
                				</span>
							</div>

							<div class="form-group col-lg-6 col-md-12 col-sm-12">
								<label>Lesson Tag*</label>
								<select name="tag" class="valid-control">
									<option value="">Choose</option>
									@foreach(tag_dropdown() as $item)
			                            <option value="{{ $item }}">{{ $item }}</option>
			                        @endforeach
								</select>
								<span class="invalid-feedback">
			                        @error('tag')
			                            <strong>{{ $message }}</strong>
			                        @enderror
	            				</span>
							</div>
							
							<div class="form-group col-lg-12 col-md-12 col-sm-12">
								<p class="mb-0">
									Price <span class="text-danger">Min. $10 USD/lesson. Max $80 USD/lesson</span>
								</p>
							</div>
							
							<div class="col-lg-12 col-md-12 col-sm-12">
								<div class="table-responsive lesson-packages-table">
									<table class="table">
										<tr>
											<th class="check_box_col"></th>
											<th>Individual  Lessons</th>
											<th>Packages</th>
											<th>Total</th>
										</tr>
										@for($i=0; $i < 3; $i++)
		                                    <tr id="package-row-{{ $i+1 }}" class="package-row">
		                                        <td class="check_box_col">
		                                            <div class="form-group col-lg-12 col-md-12 col-sm-12 text-center">
		                                                <div class="row clearfix">
		                                                    <div class="column col-lg-12 col-md-12 col-sm-12">
		                                                        <div class="check-box">
		                                                            <input type="checkbox" class="package-checkbox" name="status[{{ $i }}]" id="type-{{ $i }}"> 
		                                                            <label for="type-{{ $i }}"></label>
		                                                        </div>
		                                                    </div>
		                                                </div>
		                                            </div>
		                                        </td>
		                                        <td class="form-group">
		                                            <div class="d-flex">
		                                                <input type="hidden" name="interval[{{ $i }}]" value="{{ lesson_interval($i) }}" />
		                                                <input type="text" name="amount_per_interval[{{ $i }}]" class=" ind_lesson @error('name') error @enderror numbers tutor_lesson_price" placeholder="$ USD" autocomplete="off">
		                                                <span class="per_time"> / {{ lesson_interval($i) }}</span>
		                                            </div>
		                                            <span class="invalid-feedback">
		                                                <strong></strong>
		                                            </span>
		                                        </td>
		                                        <td class="form-group">
		                                            <select name="package[{{ $i }}]" class="ind_lesson package_select">
		                                                <option value="">Choose</option>
		                                                <option value="1">1 Lesson</option>
		                                                <option value="5">5 Lessons</option>
		                                                <option value="10">10 Lessons</option>
		                                                <option value="20">20 Lessons</option>
		                                            </select>
		                                            <span class="invalid-feedback">
		                                                <strong></strong>
		                                            </span>
		                                        </td>
		                                        <td class="form-group">
		                                            <input type="text" name="total_amount[{{ $i }}]" value="" class="@error('name') error @enderror numbers total_lesson_amount ind_lesson" placeholder="$ USD" readonly>
		                                            <span class="invalid-feedback">
		                                                <strong></strong>
		                                            </span>
		                                        </td>
		                                    </tr>
		                                @endfor
									</table>
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 form-group">
		                        <input type="hidden" name="checked_ind_packages" value="" class="checked_ind_packages">
		                        <span class="invalid-feedback">
		                            @if(Session::has('package_error'))
		                                <strong>{{ Session::get('package_error') }}</strong>
		                            @endif
		                        </span>
		                    </div>
							
							
							<div class="form-group col-lg-12 col-md-12 col-sm-12 text-right mt-5">
								<button type="submit" class="theme-btn btn-style-three"><span class="txt">Add<i class="fa fa-angle-right"></i></span></button>
							
							</div>
							
						</div>
						
					</form>
			    </div>
			</section>
		</div>
	</div>
@endsection
@section('js')
	<script>
		$(document).on("focusout", ".tutor_lesson_price", function(){
            $price = parseInt($(this).val());
            if($price >= 10 && $price <= 80)
            {
                
            }else{
                $(this).addClass('error');
                $(this).closest('.form-group').find('.invalid-feedback').html('<strong>Price Min. $10 USD/lesson. Max $80 USD/lesson</strong>');
                $(this).val('');
            }
        });

		// Jquery Validator
        $(".validate_my_form").validate({
            rules: {
                title: {
                    required: true,
                },
                description: {
                    required: true,
                },
                language: {
                    required: true,
                },
                level_from: {
                    required: true,
                },
                level_to: {
                    required: true,
                },
                category: {
                    required: true,
                },
                tag: {
                    required: true,
                },
                checked_ind_packages:{
                    required : true,
                }
            },
            messages: {
                title: {
                    required: 'Enter title',
                },
                description: {
                    required: 'Enter description',
                },
                language: {
                    required: 'Select language taught',
                },
                level_from: {
                    required: 'Select level from',
                },
                level_to: {
                    required: 'Select level to',
                },
                category: {
                    required: 'Select category',
                },
                tag: {
                    required: 'Select tag',
                },
                checked_ind_packages:{
                    required : 'Please set at least one individual lesson'
                }
            },
            errorPlacement: function(error, element) {
                 $(element).addClass('error');
                 $(element).closest('.form-group').find('.invalid-feedback').html('<strong>'+error.html()+'</strong>');
            },
            // set this class to error-labels to indicate valid fields
            success: function(label) {
                // set &nbsp; as text for IE
                label.html("&nbsp;").addClass("checked");
            },
            highlight: function(element, errorClass) {
                $(element).parent().next().find("." + errorClass).removeClass("checked");
            },
            unhighlight: function (element) {
                $(element).removeClass('error');
                $(element).closest('.form-group').find('.invalid-feedback').html('');
            }
        });

        $(document).on("change", ".package-checkbox", function(){
	        if(this.checked)
	        {
	            $(this).closest(".package-row").find(".ind_lesson").prop("required", true);

	        }else{

	            $(this).closest(".package-row").find(".ind_lesson").prop("required", false);
	            $(this).closest(".package-row").find(".invalid-feedback").html('');
	            $(this).closest(".package-row").find(".error").removeClass('error');
	        }
	        checked_boxes = $('.package-checkbox:checked').length;
	        if(checked_boxes == 0)
	        {
	            $(".checked_ind_packages").val('');
	            $(".checked_ind_packages").closest(".form-group").find(".invalid-feedback").html('<strong>Please set at least one individual lesson</strong>');
	        }else{
	            $(".checked_ind_packages").val(checked_boxes);
	            $(".checked_ind_packages").closest(".form-group").find(".invalid-feedback").html('');
	        }   
	    });

        $(document).on("keyup", ".tutor_lesson_price", function(){
            elem = $(this);
            find_total_lesson_amount(elem);   
        });

        $(document).on("change", ".package_select", function(){
            elem = $(this);
            find_total_lesson_amount(elem);   
        });

        function find_total_lesson_amount(elem)
        {
            price = elem.closest(".package-row").find(".tutor_lesson_price").val();
            total_lessons = elem.closest(".package-row").find(".package_select").val();
            if(price !== '' && total_lessons !== '')
            {
                total_lesson_amount = parseFloat(price) * parseFloat(total_lessons);
                total_lesson_amount = total_lesson_amount.toFixed(2); 
            }else{
                total_lesson_amount = 0;
            }
            elem.closest(".package-row").find(".total_lesson_amount").val(total_lesson_amount);
        }

        $(window).keydown(function(event){
            if(event.keyCode == 13) {
                event.preventDefault();
                return false;
            }
        });
        
	</script>
@endsection