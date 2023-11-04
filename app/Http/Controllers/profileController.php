<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\user;
use App\Models\profile;
use DB;

class profileController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $profile = DB::table('profiles')
                ->join('users','profiles.userid','=','users.id')
                ->select('*','profiles.id as proid')
                ->get();
        return response()->json($profile);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $userid = $request->get('userid');
        $name = $request->get('name');
        $phone = $request->get('phone');
        $email = $request->get('email');

        $image = $request->file('image');
        $imagetemp = $image->getClientOriginalName();
        $image->move('img',$imagetemp);

        $image1 = $request->file('banner');
        $imagetemp1 = $image1->getClientOriginalName();
        $image1->move('img',$imagetemp1);

        $address = $request->get('address');
        $city = $request->get('city');
        $state = $request->get('state');
        $pin = $request->get('pin');

        $insert = new profile([
            'userid' => $userid,
            'name' => $name,
            'phone' => $phone,
            'email' => $email,
            'image' => $imagetemp,
            'banner' => $imagetemp1,
            'address' => $address,
            'city' => $city,
            'state' => $state,
            'pin' => $pin
        ]);
        $insert->save();
        echo "Data Insert";
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $userid=$request->get('userid');
        $name=$request->get('name');
        $phone=$request->get('phone');
        $email=$request->get('email');
        $image=$request->file('image');
        $image1=$request->file('banner');
        $address=$request->get('address');
        $city=$request->get('city');
        $state=$request->get('state');
        $pin=$request->get('pin');

        if($image!="" && $image1!="")
        {
           
            $imagetemp = $image->getClientOriginalName();
            $image->move('img',$imagetemp);
            $imagetemp1=$image1->getClientOriginalName();
            $image1->move('img',$imagetemp1);

            $update=profile::find($id);
            $update->userid=$userid;
            $update->name=$name;
            $update->phone=$phone;
            $update->image=$image;
            $update->banner=$banner;
            $update->address=$address;
            $update->city=$city;
            $update->state=$state;
            $update->pin=$pin;

            $update->update();
            echo "Data Updated";
        }
        else if($image!="" && $image1=="")
        {
            $update=profile::find($id);
            $update->userid=$userid;
            $update->name=$name;
            $update->phone=$phone;
            $update->image=$image;
            $update->address=$address;
            $update->city=$city;
            $update->state=$state;
            $update->pin=$pin;

            $update->update();
            echo "Data Updated";
        }
        else if($image==""&&$image1!="")
        {
            $update=profile::find($id);
            $update->userid=$userid;
            $update->name=$name;
            $update->phone=$phone;
            $update->banner=$banner;
            $update->address=$address;
            $update->city=$city;
            $update->state=$state;
            $update->pin=$pin;

            $update->update();
            echo "Data Updated";
        }
        else if($image=="" && $image1=="")
        {
            $update=profile::find($id);
            $update->userid=$userid;
            $update->name=$name;
            $update->phone=$phone;
            $update->address=$address;
            $update->city=$city;
            $update->state=$state;
            $update->pin=$pin;

            $update->update();
            echo "Data Updated";
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $delete=profile::find($id);
        $delete->delete();
        echo "Record Deleted";
    }
}
