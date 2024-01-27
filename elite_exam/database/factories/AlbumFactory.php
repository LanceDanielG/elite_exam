<?php 
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Albums;

class AlbumFactory extends Factory
{
    protected $model = Albums::class;

    public function definition()
    {
        return [
            'name' => $this->faker->sentence,
            'year' => $this->faker->numberBetween(1970, date('Y')),
            'sales' => $this->faker->numberBetween(100, 1000),
        ];
    }
}