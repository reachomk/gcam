.class final Lcom/google/android/libraries/smartburst/media/InMemoryBitmapLoader$NonOwningBitmapHandle;
.super Ljava/lang/Object;
.source "InMemoryBitmapLoader.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/media/BitmapHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/media/InMemoryBitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NonOwningBitmapHandle"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/media/InMemoryBitmapLoader$NonOwningBitmapHandle;->mBitmap:Landroid/graphics/Bitmap;

    .line 81
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public final synthetic detach()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    .line 1090
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/InMemoryBitmapLoader$NonOwningBitmapHandle;->mBitmap:Landroid/graphics/Bitmap;

    .line 76
    return-object v0
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    .line 2085
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/InMemoryBitmapLoader$NonOwningBitmapHandle;->mBitmap:Landroid/graphics/Bitmap;

    .line 76
    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/InMemoryBitmapLoader$NonOwningBitmapHandle;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/InMemoryBitmapLoader$NonOwningBitmapHandle;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public final sizeInBytes()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/InMemoryBitmapLoader$NonOwningBitmapHandle;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    return v0
.end method
