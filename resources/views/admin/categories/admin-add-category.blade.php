@extends('layouts.admin_dashbord')

@section('admin-main')
<div class="container" style="padding:30px;">
    <div class="row">
        <div class="col-md-12 ">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">


                        <div class="col-md-6">
                            <h2 class="text-center"> All categories </h2>
                        </div>
                        <div class="col-md-6">
                            <a href="{{ route('categories.index') }}" class="btn btn-success pull-right">All
                                categorie</a>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    @if (Session::has('message'))
                    <div class="alert alert-success" role="alirt" >{{session::get('message')}}</div>



                    @endif
                    <h5 class="bg-success text-center p-3"> </h5>
                    <form class="form-horizontal"  action="{{route('categories.store')}}" method="POST">
                        @csrf

                        <div class="form-group">
                            <label class="col-md-4 control-label">category Name</label>
                            <div class="col-md-4">
                                <input type="text" class="form-control input-md" id="inputEmail3"
                                    placeholder="category Name" name="name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">category slug</label>
                            <div class="col-md-4">
                                <input type="text" class="form-control input-md" id="inputEmail3"
                                 disabled   placeholder="category slug"  name="slug">
                            </div>

                        </div>
                        <div class="form-group">
                            <div class="col-md-4">
                                <button name="submit" type="submit" class="btn btn-primary">submit</button>
                            </div>
                        </div>


                    </form>

                </div>
            </div>

        </div>
    </div>
</div>
@endsection


