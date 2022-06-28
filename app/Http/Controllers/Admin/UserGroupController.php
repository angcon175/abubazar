<?php

namespace App\Http\Controllers\Admin;

use DB;
use App\Models\UserGroup;
use Illuminate\Http\Request;
use App\Http\Controllers\BaseController;
use App\Http\Requests\Admin\UserGroupRequest;
use App\Repositories\Admin\Role\RoleInterface;

class UserGroupController extends BaseController
{
    protected $userGroup;
    protected $role;

    public function __construct(UserGroup $userGroup, RoleInterface $role)
    {
        $this->userGroup = $userGroup;
        $this->role = $role;
    }

    public function getIndex(Request $request)
    {
        $data = $this->userGroup::join('roles', 'roles.id', '=', 'user_groups.role_id')->select('user_groups.*','roles.role_name','roles.id as role_pk')->get();
        return view('admin.user-group.index')->withRows($data);
    }

    public function getCreate() {
        return view('admin.user-group.create')->withRole($this->role->getList());;
    }

    public function postStore(UserGroupRequest $request)
    {
        $this->resp = $this->userGroup->postStore($request);
        return redirect()->route($this->resp->redirect_to)->with($this->resp->redirect_class, $this->resp->msg);
    }

    public function getEdit(Request $request, $id)
    {
        $this->resp = $this->userGroup->getShow($id);
        if (!$this->resp->status) {
            return redirect()->route($this->resp->redirect_to)->with($this->resp->redirect_class, $this->resp->msg);
        }

        return view('admin.user-group.edit')
            ->withUserGroup($this->resp->data)->withRole($this->role->getList());
    }

    public function putUpdate(UserGroupRequest $request, $id)
    {
        $this->resp = $this->userGroup->postUpdate($request, $id);

        return redirect()->route($this->resp->redirect_to)->with($this->resp->redirect_class, $this->resp->msg);
    }

    public function getDelete($id)
    {
        $this->resp = $this->userGroup->delete($id);

        return redirect()->route($this->resp->redirect_to)->with($this->resp->redirect_class, $this->resp->msg);
    }
}
