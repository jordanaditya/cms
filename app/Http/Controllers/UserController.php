<?php

namespace App\Http\Controllers;
use App\User;
use Illuminate\Support\Facades\Gate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class UserController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
        $this->middleware(function($request, $next) {
            if (Gate::allows('manage-articles')) return $next($request);
            abort(403, 'Anda tidak memiliki cukup hak akses');
        });
    }
    public function index() {
        $users = User::where('roles', 'User')->get();
        return view('usermanage',['users' => $users]);
    }
    public function add() {
        return view ('/adduser');
    }
    public function create(Request $request) {
        User:: create ([
            'name' => $request['name'],
            'email' => $request['email'],
            'password' => Hash::make($request['password']),
            'roles' => 'User'
        ]);
        return redirect ('/usermanage');
    }
    public function edit ($id) {
        $users = User::find($id);
        return view('edituser', ['users' => $users]);
    }

    public function update($id, Request $request) {
        $users = User::find($id);
        $users->name   = $request['name'];
        $users->email = $request['email'];
        $users->password = Hash::make($request['password']);
        $users->save();
        return redirect ('/usermanage');
    }

    public function delete ($id) {
        $articles = User::find($id);
        $articles->delete();
        return redirect ('/usermanage');
    
    }

}
