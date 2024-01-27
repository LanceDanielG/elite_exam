<?php 
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Artists;

class ArtistFactory extends Factory
{
    protected $model = Artists::class;

    public function definition()
    {
        return [
            'name' => $this->faker->name,
            'code' => $this->faker->unique()->uuid,
        ];
    }
}