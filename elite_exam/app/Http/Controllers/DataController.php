<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DataController extends Controller
{
    public function getSearchedData(Request $request)
    {
        $searchTerm = $request->input('search');
        $query = "
            SELECT
                artists.id,
                artists.`code`,
                artists.`name`,
                SUM(albums.sales) AS totalSales,
                albums.`name` AS albums,
                albums.`year` AS date
            FROM
                `artists`
                LEFT JOIN albums ON artists.`code` = albums.artist_code
            ";

        // If a search term is provided, add the WHERE clause
        if ($searchTerm && !empty($searchTerm)) {
            $query .= "WHERE artists.`name` LIKE ? ";
            $bindings = ["%$searchTerm%"];
        } else {
            $bindings = [];
        }

        $query .= "GROUP BY artists.`name`, albums.`name`";

        $data = DB::select($query, $bindings);

        return response()->json($data);
    }

    public function getAlbumsTotal()
    {
        $data = DB::select("
            SELECT
                artists.id,
                artists.`code`,
                artists.`name`,
                COUNT(artists.id) AS totalAlbums
            FROM
                `artists`
                LEFT JOIN albums ON artists.`code` = albums.artist_code
                GROUP BY artists.`name`
        ");

        return response()->json($data);
    }

    public function getTotalSales()
    {
        $data = DB::select("
            SELECT
                artists.id,
                artists.`code`,
                artists.`name`,
                SUM(albums.sales) AS totalSales
            FROM
                `artists`
                LEFT JOIN albums ON artists.`code` = albums.artist_code
                GROUP BY artists.`name`
        ");

        return response()->json($data);
    }

    public function getTopOne()
    {
        $data = DB::select("
            SELECT
                artists.id,
                artists.`code`,
                artists.`name`,
                SUM(albums.sales) AS totalSales
            FROM
                `artists`
                LEFT JOIN albums ON artists.`code` = albums.artist_code
                GROUP BY artists.`name`
                ORDER BY totalSales DESC LIMIT 1
        ");

        return response()->json($data);
    }

    public function getArtistDetail()
    {
        $data = DB::select("
            SELECT
                artists.id,
                artists.`code`,
                artists.`name`
            FROM
                `artists`
        ");

        return response()->json($data);
    }

    public function removeArtistDetails(Request $request)
    {
        $id = $request->input('id');
        
        // Delete the artist using Query Builder
        DB::table('artists')->where('id', $id)->delete();

        // Optionally, you can return a success message as a response
        return response()->json(['message' => 'Artist successfully removed']);
    }

    public function updateArtistDetails(Request $request)
    {
        $id = $request->input('id');
        $code = $request->input('code');
        $name = $request->input('name');
        // Update the artist using Query Builder
        DB::table('artists')
        ->where('id', $id)
        ->update(['code' => $code, 'name' => $name]);

        // Optionally, you can fetch the updated record and return it as a response
        $updatedArtist = DB::table('artists')->where('id', $id)->first();

        return response()->json($updatedArtist);
    }

    public function getAlbumDetail()
    {
        $data = DB::select("
            SELECT
                id,
                `name`,
                sales,
                `year`
            FROM
                albums
        ");

        return response()->json($data);
    }

    public function updateAlbumDetails(Request $request)
    {
        $id = $request->input('id');
        $name = $request->input('name');
        $sales = $request->input('sales');
        $date = $request->input('date');
        // Update the artist using Query Builder
        DB::table('albums')
        ->where('id', $id)
        ->update(['sales' => $sales, 'name' => $name , 'year' => $date]);

        // Optionally, you can fetch the updated record and return it as a response
        $updatedArtist = DB::table('albums')->where('id', $id)->first();

        return response()->json($updatedArtist);
    }
}
