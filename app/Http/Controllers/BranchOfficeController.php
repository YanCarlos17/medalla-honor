<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\BranchOffice;
use Illuminate\Support\Facades\Auth;

class BranchOfficeController extends Controller
{
    public function index()
    {
        $branchoffices = BranchOffice::where('distributor_id', Auth::user()->id)->get();
        return View('branch-office', ['branchoffices' => $branchoffices]);
    }
}
