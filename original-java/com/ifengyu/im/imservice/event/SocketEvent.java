package com.ifengyu.im.imservice.event;

public enum SocketEvent {
    NONE,
    REQING_MSG_SERVER_ADDRS,
    REQ_MSG_SERVER_ADDRS_FAILED,
    REQ_MSG_SERVER_ADDRS_SUCCESS,
    CONNECTING_MSG_SERVER,
    CONNECT_MSG_SERVER_SUCCESS,
    CONNECT_MSG_SERVER_FAILED,
    MSG_SERVER_DISCONNECTED
}