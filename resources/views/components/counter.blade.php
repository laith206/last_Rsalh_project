<div>

    <div style="text-align: center">
        <p>from components</p>
    </div>

    <ul>
        @foreach ($products as $product)
            <li>{{ $product->name }}</li>
            <li>{{ $product->quantity }}</li>
            <li>{{ $product->short_description }}</li>
            <hr>
            

        @endforeach

    </ul>


</div>
