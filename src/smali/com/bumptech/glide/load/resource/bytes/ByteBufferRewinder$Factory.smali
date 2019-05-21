.class public final Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;
.super Ljava/lang/Object;
.source "ByteBufferRewinder.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataRewinder$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataRewinder$Factory",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic build(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;
    .locals 1

    .prologue
    .line 31
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 1035
    new-instance v0, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder;-><init>(Ljava/nio/ByteBuffer;)V

    .line 31
    return-object v0
.end method

.method public final getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method
