.class public Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/gifdecoder/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BitmapProvider"
.end annotation


# instance fields
.field private final arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 0

    .prologue
    .line 2031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2032
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 2033
    iput-object p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 2034
    return-void
.end method


# virtual methods
.method public obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public obtainByteArray(I)[B
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    if-nez v0, :cond_0

    .line 1050
    new-array v0, p1, [B

    .line 1052
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const-class v1, [B

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public obtainIntArray(I)[I
    .locals 2

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    if-nez v0, :cond_0

    .line 1067
    new-array v0, p1, [I

    .line 1069
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const-class v1, [I

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public release(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 1045
    return-void
.end method

.method public release([B)V
    .locals 2

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    if-nez v0, :cond_0

    .line 1062
    :goto_0
    return-void

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const-class v1, [B

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public release([I)V
    .locals 2

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    if-nez v0, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const-class v1, [I

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0
.end method
