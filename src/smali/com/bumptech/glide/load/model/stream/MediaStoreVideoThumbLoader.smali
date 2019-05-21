.class public final Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader;
.super Ljava/lang/Object;
.source "MediaStoreVideoThumbLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader;->context:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public final synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 4

    .prologue
    .line 25
    check-cast p1, Landroid/net/Uri;

    .line 2035
    invoke-static {p2, p3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isThumbnailSize(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2044
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->TARGET_FRAME:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2045
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2035
    :goto_0
    if-eqz v0, :cond_1

    .line 2037
    new-instance v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance v1, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->buildVideoFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    :goto_1
    return-object v0

    .line 2045
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2039
    :cond_1
    const/4 v0, 0x0

    .line 25
    goto :goto_1
.end method

.method public final synthetic handles(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    check-cast p1, Landroid/net/Uri;

    .line 1050
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isMediaStoreVideoUri(Landroid/net/Uri;)Z

    move-result v0

    .line 25
    return v0
.end method
