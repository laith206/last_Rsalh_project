<div class="container" style="padding:30px;">
    <div class="row">
        <div class="col-md-12">


            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <div class=" col-md-6">
                            <h2>All categorie</h2>

                        </div>
                        <div class="col-md-6">
                            <a href="{{ route('admin.Addcategories') }}" class="btn btn-success pull-right ">Add
                                categorie</a>


                        </div>
                    </div>

                </div>
                <div class="panel-body">
                    @if (Session::has('message'))
                        <div class="alert alert-success" role="alirt">{{ session::get('message') }}</div>



                    @endif
                    <div class="col-md-12 mx auto">
                        <div class="border my-3">
                            <table class="table table-striped table-dark">
                                <thead>
                                    <tr class=" text-dark bg-light border border-info ">
                                        <th scope="col">id</th>
                                        <th scope="col">category name</th>
                                        <th scope="col">slug</th>
                                        <th scope="col">Edit</th>
                                        <th scope="col">Delet</th>




                                    </tr>

                                </thead>
                                <tbody>
                                    @foreach ($categorie as $category)
                                        <tr>
                                            <th scope="row">{{ $category->id }}</th>
                                            <td>{{ $category->name }}</td>
                                            <td>{{ $category->slug }}</td>
                                            <td>
                                                <a
                                                    href="{{ route('admin.Editcategories', ['category_slug' => $category->slug]) }}"><i
                                                        class="fa fa-edit fa-2x text-info"></i></a>
                                            </td>


                                            <td>
                                                <a href="#"
                                                    wire:click.pervent="deleteCategory({{ $category->id }})"><i
                                                        class="fa fa-trash-o fa-2x text-danger"></i></a>
                                            </td>







                                        </tr>
                                    @endforeach


                                </tbody>
                            </table>
                            {{ $categorie->links() }}

                        </div>
                    </div>

                </div>



            </div>
        </div>
