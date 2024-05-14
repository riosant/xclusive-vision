<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index() {
        $data['users'] = User::where('role', 'user')->count();
        $data['agents'] = User::where('role', 'agent')->count();
        $data['admins'] = User::where('role', 'admin')->count();
        return view('dashboard', $data);
    }
}
