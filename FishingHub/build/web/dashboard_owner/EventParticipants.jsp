<%-- 
    Document   : EventManager
    Created on : Jun 20, 2025, 8:44:07 AM
    Author     : LENOVO
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="model.Users" %>
<link rel="stylesheet" href="<c:url value='/css/style.css'/>">
<%
    Users currentUser = (Users) session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Event List - Fishing Community</title>
        <script src="https://cdn.tailwindcss.com/3.4.16"></script>
        <script>tailwind.config = {theme: {extend: {colors: {primary: '#1E88E5', secondary: '#FFA726'}, borderRadius: {'none': '0px', 'sm': '4px', DEFAULT: '8px', 'md': '12px', 'lg': '16px', 'xl': '20px', '2xl': '24px', '3xl': '32px', 'full': '9999px', 'button': '8px'}}}}</script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/4.6.0/remixicon.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>


        <div class="flex h-screen overflow-hidden">
            <!-- Sidebar -->
            <div class="hidden md:flex md:flex-shrink-0">
                <div class="flex flex-col w-64 bg-white border-r border-gray-200">
                    <div
                        class="flex items-center justify-center h-16 px-4 border-b border-gray-200"
                        >
                        <h1 class="text-2xl font-['Pacifico'] text-primary">FishingHub</h1>
                    </div>
                    <div
                        class="flex flex-col flex-grow px-2 py-4 overflow-y-auto custom-scrollbar"
                        >
                        <div class="space-y-1">
                            <div
                                class="px-2 py-2 text-xs font-semibold text-gray-500 uppercase"
                                >
                                Tổng quan
                            </div>
                            <a
                                href="#"
                                class="sidebar-item active flex items-center px-2 py-2 text-sm font-medium text-gray-700 rounded-md hover:bg-gray-50 hover:text-primary"
                                >
                                <div
                                    class="w-6 h-6 mr-3 flex items-center justify-center text-gray-500"
                                    >
                                    <i class="ri-dashboard-line"></i>
                                </div>
                                Dashboard
                            </a>


                            <div
                                class="px-2 pt-4 pb-2 text-xs font-semibold text-gray-500 uppercase"
                                >
                                Quản lý sự kiện
                            </div>
                            <a href="#"
                               class="sidebar-item flex items-center px-2 py-2 text-sm font-medium text-gray-700 rounded-md ">
                                <div class="w-6 h-6 mr-3 flex items-center justify-center text-gray-500">
                                    <i class="ri-calendar-event-line"></i>
                                </div>
                                Sự kiện
                            </a>
                            <div class="ml-10 mt-1 mb-2 flex flex-col gap-2">
                                <a href="EventManager"
                                   class=" py-1 text-gray-500 hover:text-primary hover:bg-gray-100 rounded transition text-sm">
                                    <i class="ri-list-unordered mr-2"></i>Danh sách sự kiện
                                </a>
                                
                            </div>


                            <div
                                class="px-2 pt-4 pb-2 text-xs font-semibold text-gray-500 uppercase"
                                >
                                Quản lý sản phẩm
                            </div>
                            <a
                                href="#"
                                class="sidebar-item flex items-center px-2 py-2 text-sm font-medium text-gray-700 rounded-md hover:bg-gray-50 hover:text-primary"
                                >
                                <div
                                    class="w-6 h-6 mr-3 flex items-center justify-center text-gray-500"
                                    >
                                    <i class="ri-shopping-bag-line"></i>
                                </div>
                                Danh sách sản phẩm
                            </a>
                            <a
                                href="<c:url value='/Order'/>"
                                class="sidebar-item flex items-center px-2 py-2 text-sm font-medium text-gray-700 rounded-md hover:bg-gray-50 hover:text-primary"
                                >
                                <div
                                    class="w-6 h-6 mr-3 flex items-center justify-center text-gray-500"
                                    >
                                    <i class="ri-shopping-cart-line"></i>
                                </div>
                                Đơn hàng
                            </a>

                        </div>
                    </div>
                    <div class="flex items-center p-4 border-t border-gray-200">
                        <div class="flex-shrink-0">
                            <img class="w-10 h-10 rounded-full"
                                 src="https://readdy.ai/api/search-image?query=professional%20headshot%20of%20a%20Vietnamese%20male%20administrator%20with%20short%20black%20hair%2C%20wearing%20a%20business%20casual%20outfit%2C%20looking%20confident%20and%20friendly%2C%20high%20quality%2C%20realistic%2C%20studio%20lighting&width=100&height=100&seq=admin123&orientation=squarish"
                                 alt="Admin" />
                        </div>
                        <div class="ml-3">
                            <p class="text-sm font-medium text-gray-700">
                                <%= currentUser != null ? currentUser.getFullName() : "Khách" %>
                            </p>
                            <p class="text-xs font-medium text-gray-500">
                                <% if(currentUser != null && currentUser.getRoleId() == 2) { %>
                                Chủ Hồ Câu
                                <% } else { %>
                                Quản trị viên
                                <% } %>
                            </p>
                        </div>
                    </div>
                    
                    <div class="p-4">
                        <a href="../Home.jsp" class="flex items-center justify-center w-full bg-primary text-white py-2 rounded-button font-medium hover:bg-primary/90 transition">
                            <i class="ri-arrow-left-line mr-2"></i> Quay lại Trang Chủ
                        </a>
                    </div>
                </div>
            </div>
            <!-- Main content -->
            <div class="flex flex-col flex-1 w-0 overflow-hidden">
                <!-- Top navigation -->
                <div
                    class="relative z-10 flex-shrink-0 flex h-16 bg-white border-b border-gray-200"
                    >
                    <button
                        type="button"
                        class="px-4 border-r border-gray-200 text-gray-500 md:hidden"
                        >
                        <div class="w-6 h-6 flex items-center justify-center">
                            <i class="ri-menu-line"></i>
                        </div>
                    </button>
                    <div class="flex-1 px-4 flex justify-between">
                        <div class="flex-1 flex items-center">
                            <div class="w-full max-w-2xl">
                                <div class="relative w-full">
                                    <div
                                        class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none"
                                        >
                                        <div
                                            class="w-5 h-5 flex items-center justify-center text-gray-400"
                                            >
                                            <i class="ri-search-line"></i>
                                        </div>
                                    </div>
                                    <input
                                        type="text"
                                        class="block w-full pl-10 pr-3 py-2 border border-gray-200 rounded-md text-sm placeholder-gray-500 focus:outline-none focus:ring-1 focus:ring-primary focus:border-primary"
                                        placeholder="Tìm kiếm..."
                                        />
                                </div>
                            </div>
                        </div>
                        <div class="ml-4 flex items-center md:ml-6">
                            <button
                                class="p-1 rounded-full text-gray-400 hover:text-gray-500 focus:outline-none"
                                >
                                <div class="w-6 h-6 flex items-center justify-center">
                                    <i class="ri-notification-3-line"></i>
                                </div>
                            </button>
                            <div class="relative ml-3">
                                <div class="flex items-center">
                                    <span
                                        class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800"
                                        >
                                        Online
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Main content area -->
                <main class="pt-16 pb-6 px-4 max-w-5xl mx-auto">
                    
                    <div class="grid grid-cols-12 gap-4 my-6">
                        <button
                            class="col-span-12 sm:col-span-4 bg-white rounded-lg shadow-sm p-4 flex items-center hover:shadow-md transition-shadow whitespace-nowrap">
                            <div class="w-10 h-10 bg-blue-100 rounded-full flex items-center justify-center mr-3">
                                <i class="ri-notification-3-line ri-lg text-primary"></i>
                            </div>
                            <span class="font-medium">Gửi thông báo</span>
                        </button>
                        <a href="#" data-readdy="true"
                           class="col-span-12 sm:col-span-4 bg-white rounded-lg shadow-sm p-4 flex items-center hover:shadow-md transition-shadow whitespace-nowrap no-underline">
                            <div class="w-10 h-10 bg-green-100 rounded-full flex items-center justify-center mr-3">
                                <i class="ri-file-list-3-line ri-lg text-green-600"></i>
                            </div>
                            <span class="font-medium">Check-in</span>
                        </a>
                        <button
                            class="col-span-12 sm:col-span-4 bg-white rounded-lg shadow-sm p-4 flex items-center hover:shadow-md transition-shadow whitespace-nowrap">
                            <div class="w-10 h-10 bg-amber-100 rounded-full flex items-center justify-center mr-3">
                                <i class="ri-information-line ri-lg text-amber-600"></i>
                            </div>
                            <span class="font-medium">Xem chi tiết sự kiện</span>
                        </button>
                    </div>
                    
                    <section class="bg-white rounded shadow-sm p-6 mb-6">
                        <div class="flex flex-wrap gap-4">
                            <div class="w-full sm:w-auto flex-1 min-w-[240px]">
                                <div class="relative">
                                    <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none text-gray-400">
                                        <i class="ri-search-line w-5 h-5"></i>
                                    </div>
                                    <input type="text" class="w-full pl-10 pr-4 py-2 border border-gray-300 rounded text-sm"
                                           placeholder="Tìm kiếm theo tên, email...">
                                </div>
                            </div>
                            <div class="flex flex-wrap gap-4 w-full sm:w-auto">
                                <select class="px-4 py-2 border border-gray-300 rounded text-sm pr-8 w-full sm:w-auto">
                                    <option>Tất cả trạng thái</option>
                                    <option>Đã check-in</option>
                                    <option>Chưa check-in</option>
                                </select>
                                
                            </div>
                        </div>
                    </section>

                   

                    <section class="bg-white rounded shadow-sm overflow-hidden">
                        <div class="overflow-x-auto">
                            <table class="w-full">
                                <thead>
                                    <tr class="bg-gray-50 border-b border-gray-200">
                                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Họ và tên</th>
                                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Email</th>
                                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Số điện thoại</th>
                                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Trạng thái</th>
                                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Thời gian check-in</th>
                                        <th class="px-6 py-3 text-right text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        </th>
                                    </tr>
                                </thead>
                                <tbody class="divide-y divide-gray-200">
                                    
                                    <tr>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="flex items-center">
                                                <div
                                                    class="w-8 h-8 bg-primary/10 rounded-full flex items-center justify-center text-primary">
                                                    <i class="ri-user-line w-4 h-4"></i>
                                                </div>
                                                <div class="ml-3">
                                                    <div class="text-sm font-medium text-gray-900">Nguyễn Thị Minh Trang
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">minhtrang@example.com
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">0912345678</td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <span
                                                class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">Đã
                                                check-in</span>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">15/06/2025 08:45</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-right text-sm">
                                            <button class="text-gray-400 hover:text-gray-600 !rounded-button">
                                                <i class="ri-more-line w-8 h-8"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="flex items-center">
                                                <div
                                                    class="w-8 h-8 bg-primary/10 rounded-full flex items-center justify-center text-primary">
                                                    <i class="ri-user-line w-4 h-4"></i>
                                                </div>
                                                <div class="ml-3">
                                                    <div class="text-sm font-medium text-gray-900">Trần Đức Hoàng</div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">hoang.tran@example.com
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">0987654321</td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <span
                                                class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-gray-100 text-gray-800">Chưa
                                                check-in</span>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">-</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-right text-sm">
                                            <button class="text-gray-400 hover:text-gray-600 !rounded-button">
                                                <i class="ri-more-line w-8 h-8"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="flex items-center">
                                                <div
                                                    class="w-8 h-8 bg-primary/10 rounded-full flex items-center justify-center text-primary">
                                                    <i class="ri-user-line w-4 h-4"></i>
                                                </div>
                                                <div class="ml-3">
                                                    <div class="text-sm font-medium text-gray-900">Phạm Thanh Hương</div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">huong.pham@example.com
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">0923456789</td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <span
                                                class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">Đã
                                                check-in</span>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">15/06/2025 08:50</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-right text-sm">
                                            <button class="text-gray-400 hover:text-gray-600 !rounded-button">
                                                <i class="ri-more-line w-8 h-8"></i>
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <!-- Pagination -->
                        <div
                            class="bg-white px-4 py-3 flex flex-wrap items-center justify-between border-t border-gray-200 sm:px-6">
                            <div class="w-full sm:w-auto text-center sm:text-left">
                                <p class="text-sm text-gray-700">Hiển thị <span class="font-medium">1</span> đến <span
                                        class="font-medium">3</span> trong số <span class="font-medium">120</span> kết quả
                                </p>
                            </div>
                            <div class="w-full sm:w-auto mt-4 sm:mt-0 flex justify-center sm:justify-end">
                                <nav class="relative z-0 inline-flex rounded-md shadow-sm -space-x-px" aria-label="Pagination">
                                    <button
                                        class="relative inline-flex items-center px-2 py-2 rounded-l-md border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                                        <i class="ri-arrow-left-s-line w-5 h-5"></i>
                                    </button>
                                    <button
                                        class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-700 hover:bg-gray-50">1</button>
                                    <button
                                        class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-primary text-sm font-medium text-white">2</button>
                                    <button
                                        class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-700 hover:bg-gray-50">3</button>
                                    <button
                                        class="relative inline-flex items-center px-2 py-2 rounded-r-md border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                                        <i class="ri-arrow-right-s-line w-5 h-5"></i>
                                    </button>
                                </nav>
                            </div>
                        </div>
                    </section>
                </main>
            </div>
        </div>
    </body>
</html>
