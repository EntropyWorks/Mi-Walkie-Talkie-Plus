.class public final Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerUserStat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_TYPE_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final USER_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

.field private final unknownFields:Lcom/google/protobuf/ByteString;

.field private userId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->defaultInstance:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->defaultInstance:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->initFields()V

    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->userId_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v3}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->unknownFields:Lcom/google/protobuf/ByteString;

    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    invoke-virtual {v3, v5}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :try_start_5
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->bitField0_:I

    iput-object v6, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->status_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    invoke-virtual {v3, v5}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->bitField0_:I

    iput-object v6, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_6
    invoke-virtual {v3}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->unknownFields:Lcom/google/protobuf/ByteString;

    :goto_2
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->makeExtensionsImmutable()V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/ifengyu/im/protobuf/IMBaseDefine$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMBaseDefine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->memoizedSerializedSize:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$6902(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->userId_:I

    return p1
.end method

.method static synthetic access$7002(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->status_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    return-object p1
.end method

.method static synthetic access$7102(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    return-object p1
.end method

.method static synthetic access$7202(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->bitField0_:I

    return p1
.end method

.method static synthetic access$7300(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->defaultInstance:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->userId_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->USER_STATUS_ONLINE:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->status_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->CLIENT_TYPE_WINDOWS:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->access$6700()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->newBuilder()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    return-object v0
.end method


# virtual methods
.method public getClientType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->defaultInstance:Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->userId_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->status_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->getNumber()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    invoke-virtual {v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getStatus()Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->status_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->userId_:I

    return v0
.end method

.method public hasClientType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->memoizedIsInitialized:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->hasUserId()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->hasStatus()Z

    move-result v2

    if-nez v2, :cond_3

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->hasClientType()Z

    move-result v2

    if-nez v2, :cond_4

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_4
    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->newBuilderForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->newBuilder()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->toBuilder()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->newBuilder(Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->getSerializedSize()I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->userId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->status_:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_1
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->clientType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ClientType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ServerUserStat;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method
