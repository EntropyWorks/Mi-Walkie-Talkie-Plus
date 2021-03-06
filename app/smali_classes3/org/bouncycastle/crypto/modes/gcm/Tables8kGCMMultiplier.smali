.class public Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B

.field private M:[[[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 10

    const/16 v9, 0x10

    const/16 v2, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    if-nez v0, :cond_1

    const/16 v0, 0x20

    filled-new-array {v0, v9, v4}, [I

    move-result-object v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B[I)V

    move v0, v4

    :goto_0
    if-lt v0, v3, :cond_3

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v5, v5, v3

    add-int v6, v0, v0

    aget-object v5, v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v6, v6, v3

    aget-object v6, v6, v0

    invoke-static {v5, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v5, v5, v1

    aget-object v5, v5, v2

    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    move v0, v4

    :goto_1
    if-lt v0, v3, :cond_4

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v1

    add-int v5, v0, v0

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    :cond_5
    const/4 v1, 0x2

    move v4, v1

    :goto_2
    if-ge v4, v9, :cond_7

    move v1, v3

    :goto_3
    if-ge v1, v4, :cond_6

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v5, v5, v0

    aget-object v5, v5, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    iget-object v7, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v7, v7, v0

    add-int v8, v4, v1

    aget-object v7, v7, v8

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([I[I[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    add-int v1, v4, v4

    move v4, v1

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    if-le v0, v3, :cond_5

    move v1, v2

    :goto_4
    if-lez v1, :cond_5

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int/lit8 v5, v0, -0x2

    aget-object v4, v4, v5

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([I[I)V

    shr-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public multiplyH([B)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v0, 0xf

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int v3, v0, v0

    aget-object v2, v2, v3

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    aget v3, v1, v5

    aget v4, v2, v5

    xor-int/2addr v3, v4

    aput v3, v1, v5

    aget v3, v1, v6

    aget v4, v2, v6

    xor-int/2addr v3, v4

    aput v3, v1, v6

    aget v3, v1, v7

    aget v4, v2, v7

    xor-int/2addr v3, v4

    aput v3, v1, v7

    aget v3, v1, v8

    aget v2, v2, v8

    xor-int/2addr v2, v3

    aput v2, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int v3, v0, v0

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    aget v3, v1, v5

    aget v4, v2, v5

    xor-int/2addr v3, v4

    aput v3, v1, v5

    aget v3, v1, v6

    aget v4, v2, v6

    xor-int/2addr v3, v4

    aput v3, v1, v6

    aget v3, v1, v7

    aget v4, v2, v7

    xor-int/2addr v3, v4

    aput v3, v1, v7

    aget v3, v1, v8

    aget v2, v2, v8

    xor-int/2addr v2, v3

    aput v2, v1, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, p1, v5}, Lorg/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    return-void
.end method
