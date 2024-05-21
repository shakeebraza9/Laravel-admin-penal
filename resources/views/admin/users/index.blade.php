@extends('admin.layout')
@section('css')
@endsection
@section('meta')
<meta name="csrf-token" content="{{ csrf_token() }}">
@endsection
@section('content')

<div class="sidebar-overlay" id="sidebar-overlay"></div>
<div class="sidebar-mobile-menu-handle" id="sidebar-mobile-menu-handle"></div>
<div class="mobile-menu-handle"></div>
<article class="content responsive-tables-page">
    <div class="title-block">
        <h1 class="title"> All User </h1>
        <p class="title-description"> All User Data </p>
    </div>

    <section class="section">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-block">
                        <div class="card-title-block">
                            <h3 class="title"> All User List  </h3>
                        </div>
                        <section class="example">
                            <div class="table-flip-scroll">
                                <table class="table table-striped table-bordered table-hover flip-content">
                                    <thead class="flip-header">
                                        <tr>
                                            <th><button id="fetchdata" class="search-button">
                                                <i class="fa fa-search"></i></th>
                                            </button>
                                                <th><input id="name" type="text" placeholder="Name"></th>
                                            <th><input id="email" type="Email" placeholder="Email"></th>
                                            <th></th>
                                            <th><input id="status" type="text" placeholder="Status"></th>
                                            <th>Action</th>
                                        </tr>
                                        <tr>
                                            <th>#</th>
                                            <th>User Name</th>
                                            <th>Email</th>
                                            <th>Image</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody class="tbody-data">
                                       
                                    </tbody>
                                </table>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </section>
</article>
  @endsection

 @section('js')
<script>

$(document).ready(function() {
    function loadTableData() {
        $.ajax({
            url: '/admin/users/datafetc',
            method: 'GET',
            headers: {
                'X-Requested-With': 'XMLHttpRequest' // This header indicates an AJAX request
            },
            success: function(data) {
                var tbody = $('.tbody-data');
                tbody.empty();

                data.data.forEach(function(row) {
                    var tr = $('<tr>').addClass('odd gradeX');

                    tr.append($('<td>').text(row[0]));
                    tr.append($('<td>').text(row[1]));
                    tr.append($('<td>').text(row[2]));
                    tr.append($('<td>').html(row[3]));
                    tr.append($('<td>').addClass('center').text(row[4]));
                    tr.append($('<td>').addClass('center').html(row[5]));

                    tbody.append(tr);
                });
            },
            error: function(xhr, status, error) {
                console.error('Error fetching data:', error);
            }
        });
    }

    // Call the function to load data when the page is ready
    loadTableData();
});

function sendData() {
    var name = $('input[placeholder="Name"]').val();
    var email = $('input[placeholder="Email"]').val();
    var status = $('input[placeholder="Status"]').val();

    var data = {
        name: name,
        email: email,
        status: status
    };

    $.ajax({
        url: "/admin/users/finddata",
        type: "POST",
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        contentType: "application/json",
        dataType: "json",
        data: JSON.stringify(data),
        success: function(response) {
    var tbody = $('.tbody-data');
    tbody.empty();
    
    if (response.data.length === 0) {
        var dataNotFound = $('<tr>').append($('<td>').addClass('notFound').attr('colspan', 6).text("Data Not Found"));
        tbody.append(dataNotFound);
    } else {
        response.data.forEach(function(row) {
            var tr = $('<tr>').addClass('odd gradeX');

            tr.append($('<td>').text(row[0]));
            tr.append($('<td>').text(row[1]));
            tr.append($('<td>').text(row[2]));
            tr.append($('<td>').html(row[3]));
            tr.append($('<td>').addClass('center').text(row[4]));
            tr.append($('<td>').addClass('center').html(row[5]));

            tbody.append(tr);
        });
    }
},
error: function(jqXHR, textStatus, errorThrown) {
    console.error('Error:', errorThrown);
}
    });
}

$(document).ready(function() {
    $("#fetchdata").on("click", function(event) {
        event.preventDefault();
        sendData();
    });
});

</script>
@endsection