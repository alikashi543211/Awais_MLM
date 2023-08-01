@extends('layouts.email')
@section('subject', 'Trial Request')
@section('content')
	<div>
	    <h1 align="center" style="color: #2b3248;font-size:24px;font-weight:bold;margin-top: 30px;text-transform:none;font-family: sans-serif;line-height: 1.4;margin-bottom: 30px;">Booking Time Table Change Request</h1>
	</div>
	<p style="font-family: sans-serif;text-align:justify;color:grey;font-size:16px;margin-bottom: 30px;"><b>Booking ID: </b>{{ $res_request->id }}</p>
	<p style="font-family: sans-serif;text-align:justify;color:grey;font-size:16px;margin-bottom: 30px;"><b>Teacher Name: </b>{{$res_request->tutor->name}}</p>
	<p style="font-family: sans-serif;text-align:justify;color:grey;font-size:16px;margin-bottom: 30px;"><b>Date: </b>{{ \Carbon\Carbon::parse($res_request->req_date)->format('d-m-Y') }}</p>
	<p style="font-family: sans-serif;text-align:justify;color:grey;font-size:16px;margin-bottom: 30px;"><b>Slots: </b>{{ showStudentSlot($res_request->student->timezone, $res_request->tutor->timezone, $res_request->start_time, $res_request->end_time) }}</p>
	<p style="font-family: sans-serif;text-align:justify;color:grey;font-size:16px;margin-bottom: 30px;"><b>Requested By: </b>{{ $res_request->time_request_by ?? '' }}</p>


	<table role="presentation" border="0" cellpadding="0" cellspacing="0" class="btn btn-primary" style="border-collapse: separate;mso-table-lspace: 0pt;mso-table-rspace: 0pt;min-width: 100%;width: 100%;box-sizing: border-box;">
	    <tbody>
	        <tr>
	            <td style="font-family: sans-serif;font-size: 14px;vertical-align: top;background-color:#ff7833;border-radius: 5px;text-align: center;" align="center">
	                <table role="presentation" border="0" width="100%" cellpadding="0" cellspacing="0" style="border-collapse: separate;mso-table-lspace: 0pt;mso-table-rspace: 0pt;min-width: 100%;width: 100%;">
	                    <tbody>
	                        <tr>
	                            <td> <a style="font-family: sans-serif;font-size: 14px;vertical-align: top;background-color:#ff7833;border-radius: 5px;text-align: center;"> <a style="text-decoration: none;box-sizing: border-box;text-transform: capitalize;cursor: pointer;font-size: 14px;font-weight: bold;margin: 0;padding: 12px 25px;display: inline-block; border: solid 1px#ff7833;border-color:#ff7833;border-radius: 5px;color: #fffff5;" href="{{route('login')}}" target="_blank">Login</a> </td>
	                        </tr>
	                    </tbody>
	                </table>
	            </td>
	        </tr>
	    </tbody>
	</table>
@endsection
