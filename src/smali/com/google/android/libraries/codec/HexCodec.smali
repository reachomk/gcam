.class public final Lcom/google/android/libraries/codec/HexCodec;
.super Ljava/lang/Object;
.source "HexCodec.java"


# static fields
.field private static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/codec/HexCodec;->HEX_CHARS:[C

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 72
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    new-array v1, v0, [C

    .line 73
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 74
    aget-byte v2, p0, v0

    .line 75
    sget-object v3, Lcom/google/android/libraries/codec/HexCodec;->HEX_CHARS:[C

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    .line 76
    sget-object v4, Lcom/google/android/libraries/codec/HexCodec;->HEX_CHARS:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    .line 77
    shl-int/lit8 v4, v0, 0x1

    aput-char v3, v1, v4

    .line 78
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    aput-char v2, v1, v3

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
