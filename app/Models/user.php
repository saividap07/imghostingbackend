<?php



namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable as AuthenticableTrait;

class User extends Authenticatable
{
    use HasFactory, Notifiable, HasApiTokens, AuthenticableTrait;

    protected $fillable = ['username', 'email', 'password', 'type', 'active', 'contact', 'verification_token'];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function createEmailVerificationToken()
    {
        $this->verification_token = sha1(time() . $this->email);
        $this->save();
    }

    public function verifyEmail()
    {
        $this->active = 1;
        $this->verification_token = null; // You can clear the verification token after successful verification.
        $this->save();
    }
}