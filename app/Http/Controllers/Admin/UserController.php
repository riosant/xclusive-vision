<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use function PHPUnit\Framework\isEmpty;

class UserController extends Controller
{
    public function index()
    {
        $searchQuery = request()->input('q');
        $data['users'] = DB::table('users as u')
            ->where('u.role', 'user')
            ->where(function ($queryBuilder) use ($searchQuery) {
                $queryBuilder->where('u.name', 'like', '%' . $searchQuery . '%')
                    ->orWhere('u.username', 'like', '%' . $searchQuery . '%')
                    ->orWhere('u.email', 'like', '%' . $searchQuery . '%')
                    ->orWhere('u.mobile', 'like', '%' . $searchQuery . '%')
                    ->orWhere('u.code', 'like', '%' . $searchQuery . '%');
            })
            ->orderBy('id', 'DESC')
            ->paginate(15);
        return view("admin.users.index", $data);
    }

    public function add()
    {
        return view('admin.users.add');
    }

    public function store(Request $request)
    {
        // Validate form data
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:100', 'regex:/^[a-zA-Z\s]+$/'], // Alphabets with spaces
            'email' => 'required|email|unique:users,email',
            'username' => 'required|string|unique:users,username',
            'mobile' => 'required|string|digits:10',
            'password' => 'required|string|min:6',
            // Add validation rules for other fields
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        // Generate a unique code
        $code = $this->generateUniqueCode();

        // Create a new user record
        $user = new User();
        $user->name = $request->input('name');
        $user->email = $request->input('email');
        $user->username = $request->input('username');
        $user->mobile = $request->input('mobile');
        $user->password = Hash::make($request->input('password'));
        $user->code = strtoupper($code);
        $user->role = 'user';
        $user->save();

        return redirect()->route('users.list')->with('success', 'User created successfully');
    }

    // Generate a unique code
    private function generateUniqueCode()
    {
        do {
            $code = Str::random(6); // Generate a random code of 6 characters
        } while (User::where('code', $code)->exists()); // Check if code already exists in database

        return $code;
    }


    public function checkUniqueEmail(Request $request)
    {
        $email = $request->input('email');
        $id = $request->input('id');

        if ($id && $email) {
            $userCount = User::where('email', $email)
                ->where('id', '!=', $id)
                ->count();

            return response()->json(!$userCount);
        } else {
            $email = $request->input('email');
            $isUnique = User::where('email', $email)->doesntExist();
            return response()->json($isUnique);
        }
    }

    public function checkUniqueUsername(Request $request)
    {
        $username = $request->input('username');
        $id = $request->input('id');

        if ($id && $username) {
            $username = $request->input('username');
            $id = $request->input('id');

            $userCount = User::where('username', $username)
                ->where('id', '!=', $id)
                ->count();

            return response()->json(!$userCount);
        } else {
            $isUnique = User::where('username', $username)->doesntExist();
            return response()->json($isUnique);
        }
    }

    public function getUser(Request $request)
    {
        $userId = $request->input('userId');
        $user = User::findOrFail($userId);
        return response()->json($user);
    }

    public function edit($id)
    {
        $user = User::findOrFail($id);
        return view('admin.users.edit', compact('user'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|string|max:100',
            'email' => 'required|email|unique:users,email,' . $id,
            'password' => 'nullable|string|min:6',
            'mobile' => 'nullable|digits:10',
            'dob' => 'nullable|date',
        ]);

        $user = User::findOrFail($id);
        $user->name = $request->input('name');
        $user->email = $request->input('email');
        if ($request->filled('password')) {
            $user->password = Hash::make($request->input('password'));
        }
        $user->mobile = $request->input('mobile');
        $user->dob = $request->input('dob');
        $user->username = $request->input('username');
        $user->save();

        return redirect()->route('users.list')->with('success', 'User updated successfully');
    }
}
