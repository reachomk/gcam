.class final Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions$2;
.super Ljava/lang/Object;
.source "RasterizerFunctions.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/utils/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;->copyIntoDrawableResource(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Landroid/content/Context;)Lcom/google/android/libraries/smartburst/utils/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/utils/Function",
        "<",
        "Lcom/google/android/libraries/smartburst/media/BitmapHandle;",
        "Lcom/bumptech/glide/load/resource/drawable/DrawableResource",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private synthetic val$bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

.field private synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions$2;->val$bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    iput-object p2, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply(Lcom/google/android/libraries/smartburst/media/BitmapHandle;)Lcom/bumptech/glide/load/resource/drawable/DrawableResource;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/BitmapHandle;",
            ")",
            "Lcom/bumptech/glide/load/resource/drawable/DrawableResource",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions$2;->val$bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    const-string v2, "copy-for-drawable"

    .line 71
    invoke-interface {p1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 70
    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->copyBitmap(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    const/4 v1, 0x0

    .line 72
    :try_start_1
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableResource;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions$2;->val$context:Landroid/content/Context;

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-interface {v2}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->detach()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v0, Lcom/google/android/libraries/smartburst/media/GlideBitmapPoolAdapter;

    iget-object v5, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions$2;->val$bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    invoke-direct {v0, v5}, Lcom/google/android/libraries/smartburst/media/GlideBitmapPoolAdapter;-><init>(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)V

    invoke-direct {v3, v4, v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableResource;-><init>(Landroid/graphics/drawable/BitmapDrawable;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 75
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    :cond_0
    invoke-interface {p1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V

    .line 72
    return-object v3

    .line 70
    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v2}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 76
    :catchall_1
    move-exception v0

    invoke-interface {p1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V

    throw v0

    .line 75
    :catch_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 65
    check-cast p1, Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions$2;->apply(Lcom/google/android/libraries/smartburst/media/BitmapHandle;)Lcom/bumptech/glide/load/resource/drawable/DrawableResource;

    move-result-object v0

    return-object v0
.end method
