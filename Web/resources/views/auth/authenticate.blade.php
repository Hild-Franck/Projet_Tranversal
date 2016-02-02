<!-- resources/views/auth/authenticate.blade.php -->

<form method="POST" action={{'/connection'}}>
    {!! csrf_field() !!}

    <div>
        Email
        <input type="username" name="username" value="{{ old('username') }}">
    </div>

    <div>
        Password
        <input type="password" name="password" id="password">
    </div>

    <div>
        <input type="checkbox" name="remember"> Remember Me
    </div>

    <div>
        <button type="submit">Login</button>
    </div>
</form>