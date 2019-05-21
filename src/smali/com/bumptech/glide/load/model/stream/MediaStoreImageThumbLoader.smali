.class public final Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader;
.super Ljava/lang/Object;
.source "MediaStoreImageThumbLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;
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
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public final synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 3

    .prologue
    .line 18
    check-cast p1, Landroid/net/Uri;

    .line 2027
    invoke-static {p2, p3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isThumbnailSize(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2028
    new-instance v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance v1, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;->buildImageFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/mediastore/ThumbFetcher;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    :goto_0
    return-object v0

    .line 2030
    :cond_0
    const/4 v0, 0x0

    .line 18
    goto :goto_0
.end method

.method public final synthetic handles(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 18
    check-cast p1, Landroid/net/Uri;

    .line 1036
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isMediaStoreImageUri(Landroid/net/Uri;)Z

    move-result v0

    .line 18
    return v0
.end method
