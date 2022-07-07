<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<footer id="main-footer" class="text-center p-4">
  <div class="container">
    <div class="row">
      <div class="col">
        <p>Copyright &copy; <span id="year"></span> ZZONG BANK All rights reserved</p>
      </div>
    </div>
  </div>
</footer>

<script>
		// Get the current year for the copyright
		$('#year').text(new Date().getFullYear());
	</script>