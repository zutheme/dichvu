<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Validator;
use Illuminate\Support\Facades\Input;
use App\perm_command;
class perm_commandContronler extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $perm_commands = perm_command::all()->toArray();
        return view('admin.perm_command.index',compact('perm_commands'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $perm_commands = perm_command::all()->toArray();
        return view('admin.perm_command.create',compact('perm_commands'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [ 
            'name' => 'required'
        ]);
        if ($validator->fails()) { 
            $errors = $validator->errors();
            return redirect()->route('admin.perm_command.create')->with(compact('errors'));           
        }
        try {       
            $perm_command = new perm_command();
            $perm_command->command = $request->get('name');
            $perm_command->description = $request->get('description');
            $perm_command->save();
        } catch (\Illuminate\Database\QueryException $ex) {
            $errors = new MessageBag(['errorlogin' => $ex->getMessage()]);
            return redirect()->back()->withInput()->withErrors($errors);
        } 
        return redirect()->route('admin.perm_command.index')->with('success',"Đã tạo quyền thành công");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($idpercommand)
    {
        $perm_command = perm_command::find($idpercommand);
        return view('admin.perm_command.edit',compact('perm_command','idpercommand'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $idpercommand)
    {
         $this->validate($request,['name'=>'required']);
        $perm_command = perm_command::find($idpercommand);
        $perm_command->command = $request->get('name');
        $perm_command->description = $request->get('description');
        $perm_command->save();
        return redirect()->route('admin.perm_command.index')->with('success',"Đã cập nhật");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($idpercommand)
    {
        $perm_command = perm_command::find($idpercommand);
        $perm_command->delete();
        return redirect()->route('admin.perm_command.index')->with('success','record have deleted');
    }
}
