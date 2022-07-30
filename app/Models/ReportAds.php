<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ReportAds extends Model
{
    use HasFactory;
    protected $table = 'reportads';
    protected $fillable = ['ads_id', 'report_field', 'description'];
}
