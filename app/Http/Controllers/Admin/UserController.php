<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Carbon\Carbon;  
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Validation\Rule;




class UserController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

 
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function index(Request $request)
    {
        if (!Auth::check()){
            return redirect('/admin/login'); 
       }
 

        return view('admin.users.index');
    }

    
    public function datafetc(Request $request){
        if ($request->ajax()) {
            $query = User::query();


            $count = $query->count();

            $users = $query->orderBy('id', 'desc')->get();

            // Formatting the data
            $data = [];
            foreach ($users as $key => $value) {
                $action = '<div class="btn-group">';
                $action .= '<a class="btn btn-info" href="'.URL::to('admin/users/edit/'.Crypt::encryptString($value->id)).'">Edit</a>';
                if( Auth::id() != $value->id){

                    $action .= '<a class="btn btn-danger" href="' . URL::to('admin/users/delete/' . Crypt::encryptString($value->id)) . '">Delete</a>';
                }else{
                    $action .= '<a class="btn btn-success">Profile</a>';
                }
                $action .= '</div>';
                $image = "<img class='table_image' src='" . URL::to($value->path) . "'/>";
                $data[] = [
                    $value->id,
                    $value->name,
                    $value->email,
                    $image,
                    $value->role_id,
                    $action,
                ];
            }

            return response()->json([
                "draw" => $request->draw,
                "recordsTotal" => $count,
                "recordsFiltered" => $count,
                'data' => $data,
            ]);
        }
    }

    public function finddata(Request $request)
    {
        if (!Auth::check()){
            return redirect('/admin/login'); 
       }
        if ($request->ajax()) {
            $query = User::query();

            if ($request->name) {
                $query->where('name', 'like', '%' . $request->name . '%');
            }
            if ($request->email) {
                $query->where('email', 'like', '%' . $request->email . '%');
            }
            if ($request->status) {
                $query->where('role_id',$request->status);
            }

            $count = $query->count();

            $users = $query->orderBy('id', 'desc')->get();

            $data = [];
            foreach ($users as $key => $value) {
                $action = '<div class="btn-group">';
                $action .= '<a class="btn btn-info" href="' . URL::to('admin/users/edit/' . Crypt::encryptString($value->id)) . '">Edit</a>';
                if( Auth::id() == $value->id){

                    $action .= '<a class="btn btn-danger" href="' . URL::to('admin/users/delete/' . Crypt::encryptString($value->id)) . '">Delete</a>';
                }else{
                    $action .= '<a class="btn btn-success">Profile</a>';
                }
                $action .= '</div>';
                $image = "<img class='table_image' src='" . URL::to($value->path) . "'/>";
                $data[] = [
                    $value->id,
                    $value->name,
                    $value->email,
                    $image,
                    $value->role_id,
                    $action,
                ];
            }

            return response()->json([
                "draw" => $request->draw,
                "recordsTotal" => $count,
                "recordsFiltered" => $count,
                'data' => $data,
            ]);
        }
    }




    


    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function create()
    {
        if (!Auth::check()){
            return redirect('/admin/login'); 
       }
        return view('admin.users.create');
    }


    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function store(Request $request)
    {
        if (!Auth::check()){
            return redirect('/admin/login'); 
       }
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
            'email' => 'required|email|unique:users,email|max:255',
            'password' => 'required|string|min:8|max:255',
            'profile' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048', 
        ]);
    
        if ($validator->fails()) {
            return back()
                ->withErrors($validator)
                ->withInput();
        }
    
        if($request->has('permissions')){
            $permissions =  implode(',',$request->permissions);
        } else {
            $permissions =  NULL;
        }
    
        // Handle the file upload
       
        if ($request->hasFile('profile')) {
            $profileImage = $request->file('profile');
            $fileExtension = $profileImage->getClientOriginalExtension();
            $filename = uniqid().'.'.$fileExtension;
            $path = '/upload/profile/'.$filename;
            $filepath=public_path('/upload/profile');
            $profileImagePath = $profileImage->move($filepath, $filename);
        }

        // Create the user
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
            'created_by' => Auth::user()->id,
            'permissions' => $permissions,
            'path' => $path
        ]);
    
        return redirect('/admin/users/index')->with('success', 'Record Created Successfully'); 
    }
    

     /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function edit(Request $request,$id)
    {
        if (!Auth::check()){
            return redirect('/admin/login'); 
       }
        $user = User::find(Crypt::decryptString($id));
        if($user == false){  
            return back()->with('error','Record Not Found');
         }

        return view('admin.users.edit',compact('user'));
    }


     /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function update(Request $request,$id)
    {
        if (!Auth::check()){
            return redirect('/admin/login'); 
       }
        $id = Crypt::decryptString($id);
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
            'email' => [
                'required',
                'email',
                'max:255',
                Rule::unique('users')->ignore($id),
            ],
            'password' => 'nullable|string|min:8|max:255',
        ]);
        if ($validator->fails()) {
            return back()
                ->withErrors($validator)
                ->withInput();
        }

        $user = User::find($id);
        if($user == false){  
           return back()->with('error','Record Not Found');
        }
        if ($request->hasFile('profile')) {
            // Delete old profile image if it exists
            if ($user->profile_image) {
                $oldProfileImagePath = public_path($user->profile_image);
                if (file_exists($oldProfileImagePath)) {
                    unlink($oldProfileImagePath);
                }
            }
        
            // Upload and move new profile image
            $profileImage = $request->file('profile');
            $fileExtension = $profileImage->getClientOriginalExtension();
            $filename = uniqid().'.'.$fileExtension;
            $filepath = '/upload/profile/'.$filename;
            $profileImage->move(public_path('upload/profile'), $filename);
        
            // Update user profile image path
            $user->profile_image = $filepath;
        }

        $user->name = $request->name;
        $user->email = $request->email;
        $user->created_by = Auth::user()->id;
        $user->created_at = Carbon::now();
        $user->path = $filepath;

        if($request->password){
          $user->password =  Hash::make($request->password);
        }

        if($request->has('permissions')){
            $user->permissions =  implode(',',$request->permissions);
        }else{
            $user->permissions =  NULL;
        }

        $user->save();
        return back()->with('success','Record Updated');

    }


     /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function delete($id)
    {
        if (!Auth::check()){
            return redirect('/admin/login'); 
       }
        
        $user = User::find(Crypt::decryptString($id));
        if($user == false){
            return back()->with('warning','Record Not Found');
        }else{
            if ($user->path) {
                $oldProfileImagePath = public_path($user->path);
                if (file_exists($oldProfileImagePath)) {
                    unlink($oldProfileImagePath);
                }
            }
            $user->delete();
            return redirect('/admin/users/index')->with('success','Record Deleted Success'); 
        }

    }



    // Profile controller code
    public function profileUSer(Request $request)
    {
        if (!Auth::check()){
            return redirect('/admin/login'); 
       }
 
       $user = Auth::user();
        return view('admin.users.profile.index',compact('user'));
    } 

    public function profileUpdate(Request $request,$id)
    {
        if (!Auth::check()){
            return redirect('/admin/login'); 
       }
        $id = Crypt::decryptString($id);
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
            'email' => [
                'required',
                'email',
                'max:255',
                Rule::unique('users')->ignore($id),
            ],
            'password' => 'nullable|string|min:8|max:255',
        ]);
        if ($validator->fails()) {
            return back()
                ->withErrors($validator)
                ->withInput();
        }

        $user = User::find($id);
        if($user == false){  
           return back()->with('error','Record Not Found');
        }
        if ($request->hasFile('profile')) {
            // Delete old profile image if it exists
            if ($user->profile_image) {
                $oldProfileImagePath = public_path($user->profile_image);
                if (file_exists($oldProfileImagePath)) {
                    unlink($oldProfileImagePath);
                }
            }
        
            // Upload and move new profile image
            $profileImage = $request->file('profile');
            $fileExtension = $profileImage->getClientOriginalExtension();
            $filename = uniqid().'.'.$fileExtension;
            $filepath = '/upload/profile/'.$filename;
            $profileImage->move(public_path('upload/profile'), $filename);
        
            // Update user profile image path
            $user->profile_image = $filepath;
        }

        $user->name = $request->name;
        $user->email = $request->email;
        $user->created_by = Auth::user()->id;
        $user->created_at = Carbon::now();
        $user->path = $filepath;

        if($request->password){
          $user->password =  Hash::make($request->password);
        }

        if($request->has('permissions')){
            $user->permissions =  implode(',',$request->permissions);
        }else{
            $user->permissions =  NULL;
        }

        $user->save();
        return back()->with('success','Record Updated');

    }
    
}
