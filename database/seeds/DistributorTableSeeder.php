<?php

use Illuminate\Database\Seeder;
use App\User;

class DistributorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $distributors = array(
            [
                'id' => 1,
                'username' => 'admin',
                'access_code' => '1234',
                'password' => Hash::make('mdhr'),
                'remember_token' => '',
                'name' => 'Administrador',
                'email' => 'diegoreyes@xignacv2.com',
                'branch_offices' => 1,
                'total_score' => 0
            ]	
		);
		
		foreach ($distributors as $distributor){
			User::create($distributor);
		}
    }
}
