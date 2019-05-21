.class public final Lcom/android/camera/processing/memory/ByteBufferDirectPool;
.super Lcom/android/camera/processing/memory/SimpleLruResourcePool;
.source "ByteBufferDirectPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/processing/memory/SimpleLruResourcePool",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/camera/processing/memory/SimpleLruResourcePool;-><init>(I)V

    .line 12
    return-void
.end method


# virtual methods
.method protected final synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    check-cast p1, Ljava/lang/Integer;

    .line 2016
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 9
    return-object v0
.end method

.method protected final synthetic recycle(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    check-cast p2, Ljava/nio/ByteBuffer;

    .line 1022
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1023
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9
    return-object p2
.end method
