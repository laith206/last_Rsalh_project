@extends('layouts.admin_dashbord')

@section('admin-main')

        <div class="container" style="padding: 30px 0">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        @if (Session::has('message'))
                            <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                        @endif
                        <div class="panel-heading">Manage Home Categories</div>
                        <div class="panel-body">
                            <form class="form-horizontal" action="{{ route('Homecategories.update') }}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label for="selectCategory" class="col-md-4 control-label"></label>
                                    <div class="col-md-4" wire:ignore>
                                        <select name="categories[]" multiple="multiple" class="form-control sel_categories">
                                            @foreach ($categories as $category)
                                            @if (in_array($category->id,$select_categories))
                                            <option selected="{{$category->id}}" value="{{ $category->id }}"> {{$category->name}}</option>
                                            @else
                                            <option value="{{ $category->id }}">{{$category->name}}</option>
                                            @endif
                                            @endforeach
                                        </select>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="products-number" class="col-md-4 control-label">Products no</label>
                                    <div class="col-md-4">
                                        <input type="text" value="{{$products_no}}" class="form-control input-md" name="products_no">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="submit" class="col-md-4 control-label"></label>
                                    <div class="col-md-4">
                                        <button name="submit" type="submit" class="btn btn-primary">Save</button>
                                    </div>
                                </div>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>


    {{-- @push('scripts')
    <script>
        $(document).ready(function() {
            $('.sel_categories').select2();
        });
        $('.sel_categories').on('change', function(e) {
           var data = $('.sel_categories').select2("val");
            @this.set('select_categories', data);
        })
    </script>
@endpush --}}

@endsection
