<?php
namespace App\Repositories;

interface AllInterface
{

    public function all();
    public function find($id);
    public function store(object $data);
    public function update($id,object $data);
    public function delete($id);

 }
