<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dashboard</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <script src="{{ asset('js/app.js') }}" defer></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
    @include('layouts.navigation')
    <div class="container">
        <div class="card mt-4 row justify-content-end">
            <button class="btn btn-primary" id="artistDetail">View Artist Details</button>
            <button class="btn btn-primary" id="albumDetails">View Album Details</button>
            <button class="btn btn-primary" id="totalAlbumButton">Display total number of albums sold per artist</button>
            <button class="btn btn-primary" id="totalSalesButton">Display combined album sales per artist</button>
            <button class="btn btn-primary" id="topOneButton">Display the top 1 artist who sold most combined album sales</button>
            <button class="btn btn-primary" id="searchedTableButton">Display list of albums based on the searched artist</button>
            <div class="row">
                <input type="text" name="editCode" id="editCode" class="form-control my-2 d-none">
                <input type="text" name="editName" id="editName" class="form-control my-2 d-none">
                <button type="button" id="update" class="d-none btn btn-primary">UPDATE</button>
                <table class="table d-none" id="viewArtistTable">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Code</th>
                            <th scope="col">Artist</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody id="viewArtist">
                        
                    </tbody>
                </table>
            </div>
            <div class="row">
                <input type="text" name="editAlbumName" id="editAlbumName" class="form-control my-2 d-none">
                <input type="text" name="editAlbumSales" id="editAlbumSales" class="form-control my-2 d-none">
                <input type="text" name="editAlbumDate" id="editAlbumDate" class="form-control my-2 d-none">
                <button type="button" id="updateAlbum" class="d-none btn btn-primary">UPDATE</button>
                <table class="table d-none" id="viewAlbumTable">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Sales</th>
                            <th scope="col">Year</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody id="viewAlbum">
                        
                    </tbody>
                </table>
            </div>
            <table class="table d-none" id="totalAlbumTable">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Code</th>
                        <th scope="col">Artist</th>
                        <th scope="col">Total Album</th>
                    </tr>
                </thead>
                <tbody id="totalAlbum">
                    
                </tbody>
            </table>
            <table class="table d-none" id="topOneTable">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Code</th>
                        <th scope="col">Artist</th>
                        <th scope="col">Total Sales</th>
                    </tr>
                </thead>
                <tbody id="topOne">
                    
                </tbody>
            </table>

            <table class="table d-none" id="totalSalesTable">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Code</th>
                        <th scope="col">Artist</th>
                        <th scope="col">Total Sales</th>
                    </tr>
                </thead>
                <tbody id="totalSales">
                    
                </tbody>
            </table>

            <div class="row d-none" id="searchedTableTable">
                <div class="col-2">
                    <input type="text" name="search" id="search" class="form-control my-3" placeholder="Search..">
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Code</th>
                            <th scope="col">Artist</th>
                            <th scope="col">Album</th>
                            <th scope="col">Sales</th>
                            <th scope="col">Date Released</th>
                        </tr>
                    </thead>
                    <tbody id="searchedTable">
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
  
<script>
    $(document).ready(function() {
        // Fetch data on page load
        $.ajax({
            url: "{{route('viewAlbum')}}",
            type: 'GET',
            dataType: 'JSON',
            success: function(response) {
                $.each(response, (key, values)=>{
                    $('#viewAlbum').append(
                        $('<tr>').append(
                            $('<td>').text(values.id),
                            $('<td>').text(values.name),
                            $('<td>').text(values.sales),
                            $('<td>').text(values.year),
                            $('<td>').append(
                                $('<button>', {'class': 'btn btn-success', 'id': 'editAlbum', 'data-id': values.id}).text('EDIT')
                            )
                        )
                    )
                })
            }
        });
        $('body').on('click', '#editAlbum', function(e){
            var year = $(e.currentTarget).closest('tr').find('td:nth-child(4)').text(); // Get the code from the clicked row
            var sales = $(e.currentTarget).closest('tr').find('td:nth-child(3)').text(); // Get the code from the clicked row
            var name = $(e.currentTarget).closest('tr').find('td:nth-child(2)').text(); // Get the name from the clicked row
            var id = $(e.currentTarget).closest('tr').find('td:nth-child(1)').text(); // Get the name from the clicked row

            $('#editAlbumName').removeClass('d-none').val(name); // Set the code value to the input field
            $('#editAlbumSales').removeClass('d-none').val(sales); // Set the code value to the input field
            $('#editAlbumDate').removeClass('d-none').val(year); // Set the name value to the input field
            $('#updateAlbum').removeClass('d-none').val(id)
        })

        $('body').on('click', '#updateAlbum', function(e){
            $.ajax({
                url: "{{route('updateAlbum')}}",
                type: 'GET',
                data: {
                    id: $('#updateAlbum').val(),
                    name: $('#editAlbumName').val(),
                    sales: $('#editAlbumSales').val(),
                    date: $('#editAlbumDate').val(),
                },
                dataType: 'JSON',
                success: function(response) {
                    $.ajax({
                        url: "{{route('viewAlbum')}}",
                        type: 'GET',
                        dataType: 'JSON',
                        success: function(response) {
                            $('#viewAlbum').empty()
                            $.each(response, (key, values)=>{
                                $('#viewAlbum').append(
                                    $('<tr>').append(
                                        $('<td>').text(values.id),
                                        $('<td>').text(values.name),
                                        $('<td>').text(values.sales),
                                        $('<td>').text(values.year),
                                        $('<td>').append(
                                            $('<button>', {'class': 'btn btn-success', 'id': 'editAlbum', 'data-id': values.id}).text('EDIT')
                                        )
                                    )
                                )
                            })
                        }
                    });
                }
            });
        })
        //asdasdasdas
        $.ajax({
            url: "{{route('viewArtist')}}",
            type: 'GET',
            dataType: 'JSON',
            success: function(response) {
                $.each(response, (key, values)=>{
                    $('#viewArtist').append(
                        $('<tr>').append(
                            $('<td>').text(values.id),
                            $('<td>').text(values.code),
                            $('<td>').text(values.name),
                            $('<td>').append(
                                $('<button>', {'class': 'btn btn-success', 'id': 'edit', 'data-id': values.id}).text('EDIT'),
                                $('<button>', {'class': 'btn btn-danger', 'id': 'remove', 'data-id': values.id}).text('REMOVE')
                            )
                        )
                    )
                })
            }
        });
        $('body').on('click', '#edit', function(e){
            var code = $(e.currentTarget).closest('tr').find('td:nth-child(2)').text(); // Get the code from the clicked row
            var name = $(e.currentTarget).closest('tr').find('td:nth-child(3)').text(); // Get the name from the clicked row
            var id = $(e.currentTarget).closest('tr').find('td:nth-child(1)').text(); // Get the name from the clicked row

            $('#editCode').removeClass('d-none').val(code); // Set the code value to the input field
            $('#editName').removeClass('d-none').val(name); // Set the name value to the input field
            $('#update').removeClass('d-none').val(id)
        })

        $('body').on('click', '#update', function(e){
            $.ajax({
                url: "{{route('updateArtist')}}",
                type: 'GET',
                data: {
                    id: $('#update').val(),
                    code: $('#editCode').val(),
                    name: $('#editName').val(),
                },
                dataType: 'JSON',
                success: function(response) {
                    $.ajax({
                        url: "{{route('viewArtist')}}",
                        type: 'GET',
                        dataType: 'JSON',
                        success: function(response) {
                            $('#viewArtist').empty()
                            $.each(response, (key, values)=>{
                                $('#viewArtist').append(
                                    $('<tr>').append(
                                        $('<td>').text(values.id),
                                        $('<td>').text(values.code),
                                        $('<td>').text(values.name),
                                        $('<td>').append(
                                            $('<button>', {'class': 'btn btn-success', 'id': 'edit', 'data-id': values.id}).text('EDIT'),
                                            $('<button>', {'class': 'btn btn-danger', 'id': 'remove', 'data-id': values.id}).text('REMOVE')
                                        )
                                    )
                                )
                            })
                        }
                    });
                }
            });
        })
        $('body').on('click', '#remove', function(e){
            $.ajax({
                url: "{{route('removeArtist')}}",
                type: 'GET',
                data: {
                    id: $(e.currentTarget).attr('data-id')
                },
                dataType: 'JSON',
                success: function(response) {
                    $.ajax({
                        url: "{{route('viewArtist')}}",
                        type: 'GET',
                        dataType: 'JSON',
                        success: function(response) {
                            $('#viewArtist').empty()
                            $.each(response, (key, values)=>{
                                $('#viewArtist').append(
                                    $('<tr>').append(
                                        $('<td>').text(values.id),
                                        $('<td>').text(values.code),
                                        $('<td>').text(values.name),
                                        $('<td>').append(
                                            $('<button>', {'class': 'btn btn-success', 'id': 'edit', 'data-id': values.id}).text('EDIT'),
                                            $('<button>', {'class': 'btn btn-danger', 'id': 'remove', 'data-id': values.id}).text('REMOVE')
                                        )
                                    )
                                )
                            })
                        }
                    });
                }
            });
        })
        $.ajax({
            url: "{{route('topOne')}}",
            type: 'GET',
            dataType: 'JSON',
            success: function(response) {
                $.each(response, (key, values)=>{
                    $('#topOne').append(
                        $('<tr>').append(
                            $('<td>').text(values.id),
                            $('<td>').text(values.code),
                            $('<td>').text(values.name),
                            $('<td>').text(values.topOne)
                        )
                    )
                })
            }
        });
        $.ajax({
            url: "{{route('totalSales')}}",
            type: 'GET',
            dataType: 'JSON',
            success: function(response) {
                $.each(response, (key, values)=>{
                    $('#totalSales').append(
                        $('<tr>').append(
                            $('<td>').text(values.id),
                            $('<td>').text(values.code),
                            $('<td>').text(values.name),
                            $('<td>').text(values.totalSales)
                        )
                    )
                })
            }
        });
        $.ajax({
            url: "{{route('totalAlbums')}}",
            type: 'GET',
            dataType: 'JSON',
            success: function(response) {
                $.each(response, (key, values)=>{
                    $('#totalAlbum').append(
                        $('<tr>').append(
                            $('<td>').text(values.id),
                            $('<td>').text(values.code),
                            $('<td>').text(values.name),
                            $('<td>').text(values.totalAlbums)
                        )
                    )
                })
            }
        });
        $.ajax({
            url: "{{route('data')}}",
            type: 'GET',
            data: {
                search: $('#search').val()
            },
            dataType: 'JSON',
            success: function(response) {
                console.log(response)
                $.each(response, (key, values)=>{
                    $('#searchedTable').append(
                        $('<tr>').append(
                            $('<td>').text(values.id),
                            $('<td>').text(values.code),
                            $('<td>').text(values.name),
                            $('<td>').text(values.albums),
                            $('<td>').text(values.totalSales),
                            $('<td>').text(values.date)
                        )
                    )
                })
            }
        });
        $('#search').on('input', function(){
            $.ajax({
                url: "{{route('data')}}",
                type: 'GET',
                data: {
                    search: $('#search').val()
                },
                dataType: 'JSON',
                success: function(response) {
                    $('#searchedTable').empty()
                    $.each(response, (key, values)=>{
                        $('#searchedTable').append(
                            $('<tr>').append(
                                $('<td>').text(values.id),
                                $('<td>').text(values.code),
                                $('<td>').text(values.name),
                                $('<td>').text(values.albums),
                                $('<td>').text(values.totalSales),
                                $('<td>').text(values.date)
                            )
                        )
                    })
                }
            });
        })
        $('body').on('click', '#totalAlbumButton', function (){
            $('#totalAlbumTable').removeClass('d-none')
            $('#topOneTable').addClass('d-none')
            $('#totalSalesTable').addClass('d-none')
            $('#searchedTableTable').addClass('d-none')
            $('#editCode').addClass('d-none')
            $('#editName').addClass('d-none')
            $('#update').addClass('d-none')
            $('#editAlbumName').addClass('d-none')
            $('#editAlbumSales').addClass('d-none')
            $('#editAlbumDate').addClass('d-none')
            $('#updateAlbum').addClass('d-none')
        })
        $('body').on('click', '#totalSalesButton', function (){
            $('#totalAlbumTable').addClass('d-none')
            $('#topOneTable').addClass('d-none')
            $('#totalSalesTable').removeClass('d-none')
            $('#searchedTableTable').addClass('d-none')
            $('#editCode').addClass('d-none')
            $('#editName').addClass('d-none')
            $('#update').addClass('d-none')
            $('#editAlbumName').addClass('d-none')
            $('#editAlbumSales').addClass('d-none')
            $('#editAlbumDate').addClass('d-none')
            $('#updateAlbum').addClass('d-none')
        })
        $('body').on('click', '#topOneButton', function (){
            $('#totalAlbumTable').addClass('d-none')
            $('#topOneTable').removeClass('d-none')
            $('#totalSalesTable').addClass('d-none')
            $('#searchedTableTable').addClass('d-none')
            $('#editCode').addClass('d-none')
            $('#editName').addClass('d-none')
            $('#update').addClass('d-none')
            $('#editAlbumName').addClass('d-none')
            $('#editAlbumSales').addClass('d-none')
            $('#editAlbumDate').addClass('d-none')
            $('#updateAlbum').addClass('d-none')
        })
        $('body').on('click', '#searchedTableButton', function (){
            $('#totalAlbumTable').addClass('d-none')
            $('#topOneTable').addClass('d-none')
            $('#totalSalesTable').addClass('d-none')
            $('#searchedTableTable').removeClass('d-none')
            $('#editCode').addClass('d-none')
            $('#editName').addClass('d-none')
            $('#update').addClass('d-none')
            $('#editAlbumName').addClass('d-none')
            $('#editAlbumSales').addClass('d-none')
            $('#editAlbumDate').addClass('d-none')
            $('#updateAlbum').addClass('d-none')
        })
        $('body').on('click', '#artistDetail', function (){
            $('#totalAlbumTable').addClass('d-none')
            $('#topOneTable').addClass('d-none')
            $('#totalSalesTable').addClass('d-none')
            $('#viewAlbumTable').addClass('d-none')
            $('#viewArtistTable').removeClass('d-none')
            $('#editCode').addClass('d-none')
            $('#editName').addClass('d-none')
            $('#update').addClass('d-none')
            $('#editAlbumName').addClass('d-none')
            $('#editAlbumSales').addClass('d-none')
            $('#editAlbumDate').addClass('d-none')
            $('#updateAlbum').addClass('d-none')
        })
        $('body').on('click', '#albumDetails', function (){
            $('#totalAlbumTable').addClass('d-none')
            $('#topOneTable').addClass('d-none')
            $('#totalSalesTable').addClass('d-none')
            $('#viewArtistTable').addClass('d-none')
            $('#viewAlbumTable').removeClass('d-none')
            $('#editCode').addClass('d-none')
            $('#editName').addClass('d-none')
            $('#update').addClass('d-none')
            $('#editAlbumName').addClass('d-none')
            $('#editAlbumSales').addClass('d-none')
            $('#editAlbumDate').addClass('d-none')
            $('#updateAlbum').addClass('d-none')
        })
    });
</script>


