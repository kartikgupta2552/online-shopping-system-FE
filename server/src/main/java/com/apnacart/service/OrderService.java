package com.apnacart.service;

import java.util.List;

import com.apnacart.dto.request.OrderRequestDto;
import com.apnacart.dto.response.OrderResponseDto;
import com.apnacart.entity.OrderStatus;

public interface OrderService {

    /*
       CRUD operations :

       Create order
       get order by id
       get all orders
       Update order
       Delete update
    */

    OrderResponseDto createOrder(OrderRequestDto orderRequestDto);
    OrderResponseDto getOrderById(Long orderId);
    List<OrderResponseDto> getAllOrders();
    OrderResponseDto updateOrder(Long orderId, OrderRequestDto orderRequestDto);
    void cancelOrder(Long orderId);

    //admin functionality
    void deleteOrder(Long orderId);
    OrderResponseDto changeOrderStatus(Long orderId, OrderStatus status);
    List<OrderResponseDto> viewOrdersByUserId(Long userId);
}//OrderService ends
