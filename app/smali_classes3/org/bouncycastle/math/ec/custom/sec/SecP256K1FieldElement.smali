.class public Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
.super Lorg/bouncycastle/math/ec/ECFieldElement;


# static fields
.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->q:Ljava/math/BigInteger;

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;-><init>()V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid for SecP256K1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    return-void
.end method

.method protected constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->add([I[I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public addOne()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->addOne([I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat256;->eq([I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "SecP256K1Field"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public isOne()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->negate([I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 11

    const/16 v10, 0x2c

    const/4 v9, 0x2

    const/4 v8, 0x3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    invoke-static {v2, v0, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v3

    invoke-static {v2, v8, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    invoke-static {v3, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    invoke-static {v3, v8, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    invoke-static {v3, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    invoke-static {v3, v9, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    invoke-static {v3, v1, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v4

    const/16 v5, 0xb

    invoke-static {v3, v5, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    invoke-static {v4, v3, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    const/16 v5, 0x16

    invoke-static {v4, v5, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    invoke-static {v3, v4, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v5

    invoke-static {v3, v10, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    invoke-static {v5, v3, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v6

    const/16 v7, 0x58

    invoke-static {v5, v7, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    invoke-static {v6, v5, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    invoke-static {v6, v10, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    invoke-static {v5, v3, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    invoke-static {v5, v8, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    invoke-static {v3, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    const/16 v2, 0x17

    invoke-static {v3, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    invoke-static {v3, v4, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    const/4 v2, 0x6

    invoke-static {v3, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    invoke-static {v3, v1, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    invoke-static {v3, v9, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    invoke-static {v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat256;->eq([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v0, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public square()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public testBitZero()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v2, v1}, Lorg/bouncycastle/math/raw/Nat256;->getBit([II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
