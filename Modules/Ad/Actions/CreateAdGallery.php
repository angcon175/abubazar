<?php

namespace Modules\Ad\Actions;

use App\Actions\File\FileUpload;
use Modules\Ad\Entities\AdGallery;

class CreateAdGallery
{
    public static function create($request, $id)
    {
        foreach ($request->file as $image) {
            if ($image && $image->isValid()) {
                $url = $image->move('uploads/ad_multiple',$image->hashName());

                AdGallery::create([
                    'ad_id' => $id,
                    'image' => $url,
                ]);
            }
        }

        return true;
    }
}
