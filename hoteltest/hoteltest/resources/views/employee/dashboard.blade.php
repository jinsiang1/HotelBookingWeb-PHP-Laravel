<h2>Admin Dashboard </h2>

<form action="{{route('employee.logout')}}" method="POST">
@csrf
<input type="submit" value="Logout">
</form>
