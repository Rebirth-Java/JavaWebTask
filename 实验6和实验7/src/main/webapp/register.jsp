<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>用户注册 - Windows Internet Explorer</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 600px;
            text-align: center;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"],
        select {
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="radio"] {
            margin: 5px 10px 5px 0;
        }

        input[type="submit"] {
            background: #5c67f2;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background: #4a54e1;
        }

        label {
            margin-bottom: 5px;
            text-align: left;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>用户注册</h1>
    <form action="/register" method="post">
        <label for="username">用户名：</label>
        <input type="text" id="username" name="username" required><br>

        <label for="password">密码：</label>
        <input type="password" id="password" name="password" required><br>

        <label for="confirm_password">确认密码：</label>
        <input type="password" id="confirm_password" name="confirm_password" required><br>

        <label for="email">邮箱：</label>
        <input type="email" id="email" name="email" required><br>

        <label for="gender">性别：</label>
        <span>
           <input type="radio" id="male" name="gender" value="男" required> 男
        <input type="radio" id="female" name="gender" value="女" required> 女
       </span>
        <br>
        <label for="education">教育程度：</label>
        <select id="education" name="education" required>
            <option value="">请选择</option>
            <option value="primary">小学</option>
            <option value="middle">初中</option>
            <option value="high">高中</option>
            <option value="college">大学</option>
        </select><br>

        <input type="submit" value="提交" name="submit">
    </form>
</div>
</body>
</html>