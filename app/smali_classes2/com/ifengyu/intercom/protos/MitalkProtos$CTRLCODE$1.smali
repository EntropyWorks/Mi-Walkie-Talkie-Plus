.class final Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE$1;
.super Ljava/lang/Object;
.source "MitalkProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;
    .locals 1

    invoke-static {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;->valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    move-result-object v0

    return-object v0
.end method

.method public synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE$1;->a(I)Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    move-result-object v0

    return-object v0
.end method
