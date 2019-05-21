.class public final Lcom/google/android/libraries/smartburst/media/GlideBitmapPoolAdapter;
.super Ljava/lang/Object;
.source "GlideBitmapPoolAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# instance fields
.field private final mAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/media/GlideBitmapPoolAdapter;->mAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    .line 19
    return-void
.end method

.method private static ensurePremultipliedWhenHasAlpha(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public final clearMemory()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public final get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/GlideBitmapPoolAdapter;->mAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    const-string v1, "Pool adapter (get)"

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/libraries/smartburst/media/BitmapAllocator;->createBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->detach()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 35
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/media/GlideBitmapPoolAdapter;->ensurePremultipliedWhenHasAlpha(Landroid/graphics/Bitmap;)V

    .line 36
    return-object v0
.end method

.method public final getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/GlideBitmapPoolAdapter;->mAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    const-string v1, "Pool adapter (getDirty)"

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/libraries/smartburst/media/BitmapAllocator;->createBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->detach()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 43
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/media/GlideBitmapPoolAdapter;->ensurePremultipliedWhenHasAlpha(Landroid/graphics/Bitmap;)V

    .line 44
    return-object v0
.end method

.method public final put(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/GlideBitmapPoolAdapter;->mAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    const-string v1, "Pool adapter (put)"

    invoke-interface {v0, v1, p1}, Lcom/google/android/libraries/smartburst/media/BitmapAllocator;->wrapBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V

    .line 29
    return-void
.end method

.method public final setSizeMultiplier(F)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public final trimMemory(I)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
