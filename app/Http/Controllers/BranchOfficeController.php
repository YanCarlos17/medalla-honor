<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BranchOfficeController extends Controller
{
    public function index()
    {
        return View('branch-office');
    }
}
