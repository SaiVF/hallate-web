<?php

namespace App\Composers;

use Illuminate\View\View;

class AddAdminUser
{
	public function compose(View $view)
	{
		$view->with('admin', auth()->user());
	}
}
