// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: mockgrandpa/tx.proto

package types

import (
	context "context"
	fmt "fmt"
	grpc1 "github.com/gogo/protobuf/grpc"
	proto "github.com/gogo/protobuf/proto"
	grpc "google.golang.org/grpc"
	math "math"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.GoGoProtoPackageIsVersion3 // please upgrade the proto package

func init() { proto.RegisterFile("mockgrandpa/tx.proto", fileDescriptor_e6185b03bbc3106b) }

var fileDescriptor_e6185b03bbc3106b = []byte{
	// 140 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0x12, 0xc9, 0xcd, 0x4f, 0xce,
	0x4e, 0x2f, 0x4a, 0xcc, 0x4b, 0x29, 0x48, 0xd4, 0x2f, 0xa9, 0xd0, 0x2b, 0x28, 0xca, 0x2f, 0xc9,
	0x17, 0x52, 0xcb, 0x4f, 0x2e, 0xc9, 0x2f, 0x28, 0x2d, 0xce, 0x4b, 0x2d, 0x29, 0xcf, 0x2f, 0xca,
	0xd6, 0x43, 0x52, 0x84, 0xcc, 0x36, 0x62, 0xe5, 0x62, 0xf6, 0x2d, 0x4e, 0x77, 0x0a, 0x3d, 0xf1,
	0x48, 0x8e, 0xf1, 0xc2, 0x23, 0x39, 0xc6, 0x07, 0x8f, 0xe4, 0x18, 0x27, 0x3c, 0x96, 0x63, 0xb8,
	0xf0, 0x58, 0x8e, 0xe1, 0xc6, 0x63, 0x39, 0x86, 0x28, 0xeb, 0xf4, 0xcc, 0x92, 0x8c, 0xd2, 0x24,
	0xbd, 0xe4, 0xfc, 0x5c, 0x7d, 0xa8, 0x99, 0xba, 0x50, 0x43, 0xf5, 0x41, 0x06, 0xe9, 0xc2, 0xac,
	0xae, 0xd0, 0x47, 0x71, 0x48, 0x65, 0x41, 0x6a, 0x71, 0x12, 0x1b, 0xd8, 0x31, 0xc6, 0x80, 0x00,
	0x00, 0x00, 0xff, 0xff, 0x22, 0x64, 0xa6, 0x15, 0xa4, 0x00, 0x00, 0x00,
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConn

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion4

// MsgClient is the client API for Msg service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type MsgClient interface {
}

type msgClient struct {
	cc grpc1.ClientConn
}

func NewMsgClient(cc grpc1.ClientConn) MsgClient {
	return &msgClient{cc}
}

// MsgServer is the server API for Msg service.
type MsgServer interface {
}

// UnimplementedMsgServer can be embedded to have forward compatible implementations.
type UnimplementedMsgServer struct {
}

func RegisterMsgServer(s grpc1.Server, srv MsgServer) {
	s.RegisterService(&_Msg_serviceDesc, srv)
}

var _Msg_serviceDesc = grpc.ServiceDesc{
	ServiceName: "octopusnetwork.mockgrandpa.mockgrandpa.Msg",
	HandlerType: (*MsgServer)(nil),
	Methods:     []grpc.MethodDesc{},
	Streams:     []grpc.StreamDesc{},
	Metadata:    "mockgrandpa/tx.proto",
}
