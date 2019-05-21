.class public final Lcom/bumptech/glide/load/engine/bitmap_recycle/ByteArrayAdapter;
.super Ljava/lang/Object;
.source "ByteArrayAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic getArrayLength(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 6
    check-cast p1, [B

    .line 2017
    array-length v0, p1

    .line 6
    return v0
.end method

.method public final getElementSizeInBytes()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "ByteArrayPool"

    return-object v0
.end method

.method public final synthetic newArray(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    .line 1022
    new-array v0, p1, [B

    .line 6
    return-object v0
.end method
