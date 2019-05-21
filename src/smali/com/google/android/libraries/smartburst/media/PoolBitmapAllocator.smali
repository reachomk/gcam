.class public final Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator;
.super Ljava/lang/Object;
.source "PoolBitmapAllocator.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/media/BitmapAllocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator$PoolBitmapHandle;
    }
.end annotation


# instance fields
.field private final mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    const/high16 v1, 0x3200000

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 39
    return-void
.end method


# virtual methods
.method public final createBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0, p2, p3, p4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    invoke-static {p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    :cond_0
    new-instance v1, Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator$PoolBitmapHandle;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v1, v0, v2}, Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator$PoolBitmapHandle;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    const-string v0, "PoolBitmapAllocator[pool="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final wrapBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator$PoolBitmapHandle;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v0, p2, v1}, Lcom/google/android/libraries/smartburst/media/PoolBitmapAllocator$PoolBitmapHandle;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-object v0
.end method
