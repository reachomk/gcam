.class public final Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;
.super Ljava/lang/Object;
.source "BitmapDrawableEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceEncoder",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final encoder:Lcom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/ResourceEncoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 22
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 23
    return-void
.end method


# virtual methods
.method public final synthetic encode(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z
    .locals 4

    .prologue
    .line 15
    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    .line 1027
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v2, v0, v3}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-interface {v1, v2, p2, p3}, Lcom/bumptech/glide/load/ResourceEncoder;->encode(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z

    move-result v0

    .line 15
    return v0
.end method

.method public final getEncodeStrategy(Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/ResourceEncoder;->getEncodeStrategy(Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/EncodeStrategy;

    move-result-object v0

    return-object v0
.end method
